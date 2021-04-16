//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eleanor Kalu on 16.04.21.
//  Copyright © 2021 Blarnyä All rights reserved.
//

import UIKit

struct CalculatorBrain {
//    let height = heightSliderLabel.value
//    let weight = weightSliderLabel.value
    
//    let bmi = weight / pow(height, 2)
    
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    
}
