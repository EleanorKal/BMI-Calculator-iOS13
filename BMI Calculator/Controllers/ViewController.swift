//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Eleanor Kalu on 12/04/2021.
//  Copyright © 2021 Blarnyä. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        heightSliderLabel.value = 1.50
        weightSliderLabel.value = 100
        heightLabelChanged.text = String(format: "%.2f", heightSliderLabel.value) + "m"
        weightLabelChanged.text = String(format: "%.0f", weightSliderLabel.value) + "Kg"
        
    }
    
    var heightInMeters : Double = 0.0
    var weightInKg : Int = 0
    
    @IBOutlet weak var heightLabelChanged: UILabel!
    @IBOutlet weak var weightLabelChanged: UILabel!
    @IBOutlet weak var heightSliderLabel: UISlider!
    @IBOutlet weak var weightSliderLabel: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let vheight = String(format: "%.2f", heightSliderLabel.value) + "m"
        heightLabelChanged.text = vheight
        
      
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let vWeight = String(format: "%.0f", weightSliderLabel.value) + "Kg"
        weightLabelChanged.text = vWeight
    }
    

}

