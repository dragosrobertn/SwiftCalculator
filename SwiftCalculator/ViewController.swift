//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Dragos Neagu on 06/02/2017.
//  Copyright © 2017 Dragos Neagu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentOperation : Operator = Operator.nothing
    var calcState : CalculationState = CalculationState.newNumStarted
    
    var firstValue : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberClicked(sender: UIButton) {
        //updateDisplay(String(sender.tag))
    }
    
    @IBAction func operatorClicked(sender: UIButton) {
        switch sender.tag {
        case 10:
            print ("Add")
        case 11:
            print ("Substract")
        case 12:
            print ("Multiply")
        case 13:
            print ("Divide")
        default:
            return
        }
    }
    
    @IBAction func equalsClicked(sender: UIButton) {
        
    }
    
    func updateDisplay(number: String){
        if calcState == CalculationState.newNumStarted {
//            if let num = resultLabel.text {
//                if num != "" {
//                    firstValue = num
//                }
//            }
//            calcState = CalculationState.enterinNum
//            resultLabel.text = number
//        }
//        else if calcState == CalculationState.enterinNum {
//            resultLabel.text = resultLabel.text! + number
        }
    }


}

