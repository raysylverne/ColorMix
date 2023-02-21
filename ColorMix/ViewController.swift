//
//  ViewController.swift
//  ColorMix
//
//  Created by Ray Sylver on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //colorView.backgroundColor = .black
        updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

    @IBAction func swithChanged(_ sender: UISwitch) {
        if sender.isOn {
            updateColor()
        } else {
            updateColor()
        }
    }
}
