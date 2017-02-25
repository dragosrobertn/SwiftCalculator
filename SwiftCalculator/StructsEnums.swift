//
//  StructsEnums.swift
//  SwiftCalculator
//
//  Created by Dragos Neagu on 06/02/2017.
//  Copyright © 2017 Dragos Neagu. All rights reserved.
//

import Foundation

enum Operator: String {
    case add = "+"
    case substract = "-"
    case multiply = "*"
    case divide = "/"
    case nothing = ""
}

enum CalculationState : String {
    case enteringNum = "enteringNum"
    case newNumStarted = "newNumStarted"
}
