//
//  ViewController.swift
//  app1
//
//  Created by admin on 18.03.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text_field: UITextField!
    @IBOutlet weak var ok_button: UIButton!
    @IBOutlet weak var result_lable: UILabel!
    @IBOutlet weak var cancel_button: UIButton!
    @IBOutlet weak var small_button: UIButton!
    @IBOutlet weak var medium_button: UIButton!
    @IBOutlet weak var large_button: UIButton!
    
    var result: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        result_lable.text = ""
            
            ok_button.setTitle("OK", for:
                UIControl.State.normal)
            ok_button.backgroundColor = UIColor.green
            ok_button.setTitleColor(UIColor.white, for: UIControl.State.normal)
            ok_button.setTitleColor(UIColor.black
                , for: UIControl.State.highlighted)
        
            
            cancel_button.setTitle("Cancel", for:UIControl.State.normal)
            cancel_button.backgroundColor = UIColor.red
            cancel_button.setTitleColor(UIColor.white, for: UIControl.State.normal)
            cancel_button.setTitleColor(UIColor.black, for: UIControl.State.highlighted)
            result_lable.numberOfLines = 0
            
            small_button.setTitle("Small", for:UIControl.State.normal)
            small_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
            small_button.backgroundColor = UIColor.blue
            
            medium_button.setTitle("Medium", for:UIControl.State.normal)
            medium_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
            medium_button.backgroundColor = UIColor.yellow
            
            large_button.setTitle("Large", for:UIControl.State.normal)
            large_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
            large_button.backgroundColor = UIColor.blue
            
            view.backgroundColor = UIColor.lightGray
    }
    
    var size = 40
    @IBAction func small_button_tap(_ sender: Any) {
        size = 20
        
        small_button.backgroundColor = UIColor.yellow
        medium_button.backgroundColor = UIColor.blue
        large_button.backgroundColor = UIColor.blue
        
        ToastView.shared.short(self.view, txt_msg: "Small size")
        
    }
    
    
    
    @IBAction func medium_button_tap(_ sender: Any) {
        size = 40
        
        small_button.backgroundColor = UIColor.blue
        medium_button.backgroundColor = UIColor.yellow
        large_button.backgroundColor = UIColor.blue
        
        ToastView.shared.short(self.view, txt_msg: "Medium size")
        
    }
    
    
    @IBAction func large_button_tap(_ sender: Any) {
        
        size = 60
        
        small_button.backgroundColor = UIColor.blue
        medium_button.backgroundColor = UIColor.blue
        large_button.backgroundColor = UIColor.yellow
        
        ToastView.shared.short(self.view, txt_msg: "Large size")
        
    }
    
    @IBAction func ok_button(_ sender: Any) {
        result = text_field.text!
        if result.isEmpty{
            ToastView.shared.short(self.view, txt_msg: "Enter the text")
        }
        else{
            result_lable.font = result_lable.font.withSize(CGFloat(size))
            result_lable.text = "\(result!)"
            ToastView.shared.short(self.view, txt_msg: "Resizing...")
        }
    }
    
    
    @IBAction func cancel_button(_ sender: Any) {
        text_field.text = ""
        result_lable.text = ""
        
        ToastView.shared.short(self.view, txt_msg: "Cancel")
        
    }
    

}

