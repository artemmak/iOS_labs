//
//  ResultViewController.swift
//  lab2_ChildView
//
//  Created by admin on 23.05.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

public extension UIColor {

    convenience init(absoluteRed red: Int, green: Int, blue: Int, alpha: Int = 255) {
        let normalizedRed = CGFloat(red) / 255.0
        let normalizedGreen = CGFloat(green) / 255.0
        let normalizedBlue = CGFloat(blue) / 255.0
        let normalizedAlpha = CGFloat(alpha) / 255.0

        self.init(
            red: normalizedRed,
            green: normalizedGreen,
            blue: normalizedBlue,
            alpha: normalizedAlpha
        )
    }

    convenience init(hex: Int) {
        self.init(
            absoluteRed: (hex >> 16) & 0xff,
            green: (hex >> 8) & 0xff,
            blue: hex & 0xff
        )
    }

    convenience init(hex: String)
    {
        var normalizedHexColor = hex
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()

        if normalizedHexColor.hasPrefix("#") {
            normalizedHexColor = String(normalizedHexColor.dropFirst())
        }

        // Convert to hexadecimal color (string) to integer
        var hex: UInt32 = 0
        Scanner(string: normalizedHexColor).scanHexInt32(&hex)

        self.init(
            hex: Int(hex)
        )
    }
}


class ResultViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        result.text = ""
        result.textColor = UIColor.white

        result.numberOfLines = 0
        
        view.backgroundColor = UIColor(hex: "#CCCCFF")
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToResultViewController (sender: UIStoryboardSegue) -> Void
    {
        let controller = sender.source as? ManageViewController
        let text = controller!.text
        let size = controller!.size
    
        result.font = result.font.withSize(CGFloat((size)))
        result.text = text
    }

}
