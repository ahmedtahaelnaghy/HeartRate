//
//  ViewController.swift
//  HeartRate
//
//  Created by Ahmed Taha on 12/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heartRateTextField: UITextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    
    @IBAction func resultBtn(_ sender: Any) {
       
        let heartRateIndex = heartRateTextField.text!
       
        if heartRateIndex.isEmpty {
            
            resultLbl.text = "Enter Your Heart Rate"
            
        }else {
            
            let heartRate = Int(heartRateTextField.text!)!
            
            switch heartRate {
            case 100...120:
                resultLbl.text = "You are in the Very Light zone. Activity in this zone helps with recovery."
                
            case 121...140:
                resultLbl.text = "You are in the Light zone. Activity in this zone helps improve Basic endurance and fat burning."
            case 141...160:
                resultLbl.text = "You are in the Moderate zone. Activity in this zone helps improve aerobic fitness."
            case 161...180:
                resultLbl.text = "You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions."
            case 181...200:
                resultLbl.text = "You are in the Maximum zone. Activity in this zone helps fit athletes develop speed."
            default:
                resultLbl.text = "Something Wrong"
            }
        }
    }
}

