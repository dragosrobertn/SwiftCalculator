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

    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberClicked(sender: UIButton) {
        updateDisplay(number: String(sender.tag))
    }
    
    @IBAction func operatorClicked(sender: UIButton) {
        
        if let num = resultLabel.text {
            if num != "" {
                firstValue = num
                resultLabel.text = ""
            }
        }
        
        switch sender.tag {
        case 10:
            currentOperation = Operator.add
        case 11:
            currentOperation = Operator.substract
        case 12:
            currentOperation = Operator.multiply
        case 13:
            currentOperation = Operator.divide
        default:
            return
        }
    }
    
    @IBAction func equalsClicked(sender: UIButton) {
        calculateResult()
    }
    
    func updateDisplay(number: String){
        if calcState == CalculationState.newNumStarted {
            if let num = resultLabel.text {
                if num != "" {
                    firstValue = num
                }
                calcState = CalculationState.enterinNum
                resultLabel.text = number
            }
            else if calcState == CalculationState.enterinNum {
                resultLabel.text = resultLabel.text! + number
            }
        }
    }
    
    func calculateResult() {
        if (firstValue.isEmpty){
            return
        }
        
        var result = ""
        
        switch currentOperation {
        case Operator.add:
            result = "\(Double(firstValue)! + Double(resultLabel.text!)!)"
        case Operator.substract:
            result = "\(Double(firstValue)! - Double(resultLabel.text!)!)"
        case Operator.multiply:
            result = "\(Double(firstValue)! * Double(resultLabel.text!)!)"
        case Operator.divide:
            result = "\(Double(firstValue)! / Double(resultLabel.text!)!)"
        default:
            return
        }
        
        resultLabel.text = result
        calcState = CalculationState.newNumStarted
    }


}

