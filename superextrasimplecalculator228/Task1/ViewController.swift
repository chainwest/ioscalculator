//
//  ViewController.swift
//  Task1
//
//  Created by Evgeniy on 03.12.2019.
//  Copyright © 2019 Evgeniy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var resultVar = 0.0
    var numbaOne = 0.0
    var operation = 0
    var mathSign = false
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.lavender)
    }

    @IBAction func digitsButton(_ sender: UIButton) {
        if mathSign == true {
            resultLabel.text = String(sender.tag)
            mathSign = false
        } else {
            resultLabel.text = resultLabel.text! + String(sender.tag)
        }
        
        resultVar = Double(resultLabel.text!)!
    }
    
    @IBAction func opeartionButton(_ sender: UIButton) {
        if resultLabel.text != "" && sender.tag != 18 && sender.tag != 11 {
            numbaOne = Double(resultLabel.text!)!
            
            switch sender.tag {
            case 15:
                resultLabel.text = "/"
            case 14:
                resultLabel.text = "x"
            case 13:
                resultLabel.text = "-"
            case 12:
                resultLabel.text = "+"
            default:
                print("Sign pressed")
            }
            
            operation = sender.tag
            mathSign = true
        } else if sender.tag == 11 {
            switch operation {
            case 15:
                resultLabel.text = String(numbaOne / resultVar)
            case 14:
                resultLabel.text = String(numbaOne * resultVar)
            case 13:
                resultLabel.text = String(numbaOne - resultVar)
            case 12:
                resultLabel.text = String(numbaOne + resultVar)
            default:
                print(numbaOne, resultVar)
            }
        }
        
        if sender.tag == 18 {
            resultLabel.text = ""
            resultVar = 0.0
            operation = 0
        }
    }
}

