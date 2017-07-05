//
//  LengthViewController.swift
//  UnitConverter
//
//  Created by Alejandro Yepes on 7/2/17.
//  Copyright © 2017 Alejandro Yepes. All rights reserved.
//

import UIKit

class LengthViewController: UIViewController {
    @IBOutlet weak var labelFeet: UITextField!
    @IBOutlet weak var labelInches: UITextField!
    @IBOutlet weak var labelCm: UITextField!
  
    func validateEntry (entry: String) -> Double {
        if let value = Double(entry) {
            return value
            
        }
        else{
            return 0
        }
    }
    
    func feetToInches (feet : Int) -> Int
    {
        let total = feet * 12
        return total
    }
    func inchesToCm (inches : Double ) -> Double
    {
        let total = inches * 2.54
        return total
    }
    func cmToInches (cm : Double) -> Double
    {
        let total = cm * 2.54
        return total
    }
    func inchesToFeet (inches : Double) -> Int
    {
     let totalFeet = Int(inches/12)
     return totalFeet
    }
    func remanderInchesToFeet (inches: Double) -> Double
    {
        let remanderInches = inches.truncatingRemainder(dividingBy: 12.0)
        return remanderInches
    }
    func feetToCm (feet: Double) -> Double
    {
        let cm = feet * 30
        return cm
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
        if (labelFeet.text! == "" && labelInches.text! == "" && labelCm.text == "")
        {}
        else if (labelFeet.text != "" && labelCm.text != "" || labelInches.text != "" && labelCm.text != "")
        {
            labelCm.text = ""
            labelInches.text = ""
            labelFeet.text = ""
        }
            // Input Cm
        else if (labelCm.text != "" && labelInches.text == "" && labelFeet.text == "")
        {
            let inches = cmToInches(cm: Double(labelCm.text!)!)
            print(inches)
            let feet = inchesToFeet(inches: inches)
            print (inches)
            let leftOverInches = remanderInchesToFeet(inches: inches)
            print(leftOverInches)
            
        }
            // input only inches
        else if (labelCm.text == "" && labelInches.text != "" && labelFeet.text == "")
        {
            let Totalcm = inchesToCm(inches: Double(labelInches.text!)!)
            labelCm.text = String(Totalcm)
        }
            // input only feet
        else if (labelCm.text == "" && labelInches.text == "" && labelFeet.text != "")
        {
            let cm = feetToCm(feet: Double(labelFeet.text!)!)
            labelCm.text = String(cm)
        }
        // input both feet and inches
        else if (labelCm.text == "" && labelFeet.text != "" && labelInches.text != "")
        {
            let feetTocm = feetToCm(feet: Double(labelFeet.text!)!)
            let cm = inchesToCm(inches: Double(labelInches.text!)!)
            let totalCm = cm + feetTocm
            labelCm.text = String(totalCm)
        }
    }
    


}
