//
//  WeightViewController.swift
//  UnitConverter
//
//  Created by Alejandro Yepes on 7/1/17.
//  Copyright © 2017 Alejandro Yepes. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var labelPounds: UITextField!
    @IBOutlet weak var labelKilo: UITextField!
    func calculateKiloToPound(kilo: Double ) -> Double{
        let total = kilo * 2.2
        return total
    }

    func validateEntry (entry: String) -> Double {
        if let value = Double(entry) {
            return value
            
        }
        else{
            return 0
        }
    }
    func calculatePoundToKilo (pound: Double) -> Double{
        let total = pound / 2.2
        return total
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onCalculateButtonTapped(_ sender: Any) {
        if labelKilo.text == "" && labelPounds.text == ""
        {
        
        }
        else if labelPounds.text != "" && labelKilo.text != "" {
            labelPounds.text = ""
            labelKilo.text = ""
        }
        else if labelKilo.text == "" {
            
            labelKilo.text = String(calculatePoundToKilo(pound: Double(validateEntry(entry: labelPounds.text!))))
        }
        else if labelPounds.text == ""{
            labelPounds.text = String(calculateKiloToPound(kilo: Double(validateEntry(entry: labelKilo.text!))))
        }
        else{
            print("Error")
        }
    }
    
    
}
