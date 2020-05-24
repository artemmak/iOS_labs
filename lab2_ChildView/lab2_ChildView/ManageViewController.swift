//
//  ManageViewController.swift
//  lab2_ChildView
//
//  Created by admin on 23.05.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit


class ManageViewController: UIViewController {
    
    @IBOutlet weak var ok_button: UIButton!
    @IBOutlet weak var text_field: UITextField!
    @IBOutlet weak var cancel_button: UIButton!
    @IBOutlet weak var small_button: UIButton!
    @IBOutlet weak var medium_button: UIButton!
    @IBOutlet weak var large_button: UIButton!
    
    
    
    var text:String = ""
    var size:Int = 40
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        ok_button.setTitle("OK", for: UIControl.State.normal)
        ok_button.backgroundColor = UIColor(hex: "#CCFFCC")
        ok_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        ok_button.setTitleColor(UIColor.red, for: UIControl.State.highlighted)


        cancel_button.setTitle("Cancel", for:UIControl.State.normal)
        cancel_button.backgroundColor = UIColor(hex: "#FFCCCC")
        cancel_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        cancel_button.setTitleColor(UIColor.red, for: UIControl.State.highlighted)
        
        small_button.setTitle("Small", for:UIControl.State.normal)
        small_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        small_button.backgroundColor = UIColor(hex: "#CCFFFF")

        medium_button.setTitle("Medium", for:UIControl.State.normal)
        medium_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        medium_button.backgroundColor = UIColor(hex: "#FFFF99")
        
        large_button.setTitle("Large", for:UIControl.State.normal)
        large_button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        large_button.backgroundColor = UIColor(hex: "#CCFFFF")

    
        view.backgroundColor = UIColor(hex: "#CCE5FF")
    }
    
    
    
    @IBAction func small_button(_ sender: Any)
    {
        size = 20
        
        small_button.backgroundColor = UIColor(hex: "#FFFF99")
        medium_button.backgroundColor = UIColor(hex: "#CCE5FF")
        large_button.backgroundColor = UIColor(hex: "#CCE5FF")
        
        ToastView.shared.short(self.view, txt_msg: "Small size")
    }
    
    @IBAction func medium_button(_ sender: Any)
    {
        size = 40
        
        small_button.backgroundColor = UIColor(hex: "#CCE5FF")
        medium_button.backgroundColor = UIColor(hex: "#FFFF99")
        large_button.backgroundColor = UIColor(hex: "#CCE5FF")
        
        ToastView.shared.short(self.view, txt_msg: "Medium size")
    }
    
    @IBAction func large_button(_ sender: Any)
    {
        size = 60
        
        small_button.backgroundColor = UIColor(hex: "#CCE5FF")
        medium_button.backgroundColor = UIColor(hex: "#CCE5FF")
        large_button.backgroundColor = UIColor(hex: "#FFFF99")
        
        ToastView.shared.short(self.view, txt_msg: "Large size")
    }
    
    
    @IBAction func ok_button(_ sender: Any) {
        
        text = text_field.text!
        if !text_field.text!.isEmpty
        {
            ToastView.shared.short(self.view, txt_msg: "Resizing...")
            performSegue(withIdentifier: "unwindToResultViewController", sender: self)
        }
        else{
            ToastView.shared.short(self.view, txt_msg: "Enter the text")
        }
    }
    
    @IBAction func cancel_button(_ sender: Any)
    {
        text_field.text = ""
        text = ""
        ToastView.shared.short(self.view, txt_msg: "Cancel")
        performSegue(withIdentifier: "unwindToResultViewController", sender: self)

    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
    }
    

}
