//
//  ViewController.swift
//  calculator
//
//  Created by My Macbook on 08/10/18.
//  Copyright © 2018 My Macbook. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
var numberOnScreen:Double = 0;
var previousNumber:Double = 0;
var performingMath = false
var operation = 0;


    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = true
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    @IBAction func Buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 // divede
            {
                label.text = "/";
            }
            else if sender.tag == 13 //multiply
            {
                label.text = "*";
            }
            else if sender.tag == 14 //minus
            {
                label.text = "-";
            }
            else if sender.tag == 15 //plus
            {
                label.text = "+";
            }
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previousNumber + numberOnScreen)
            }
        else if sender.tag == 11
            {
                label.text = ""
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0;
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

