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
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Underweight. Up Your Calorie Intake.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Normal Range. Keep Up The Good Work.", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight. Eat Less Exercise More", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? ""
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        return color
    }

    
    
}
