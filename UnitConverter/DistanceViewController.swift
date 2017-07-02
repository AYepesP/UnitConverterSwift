//
//  DistanceViewController.swift
//  UnitConverter
//
//  Created by Alejandro Yepes on 7/1/17.
//  Copyright © 2017 Alejandro Yepes. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {
    @IBOutlet weak var DistanceMiles: UITextField!
    @IBOutlet weak var DistanceKm: UITextField!
    func validateEntry (entry: String) -> Double
    {
        if let value = Double(entry){
            return value
        }
        else{
            return 0
        }
    }
    func calculateKiloToMiles (kilo : Double) -> Double{
        let total = kilo * 1.6
        return total
    }
    func calculateMilesToKilo (mile:Double) -> Double{
        let total = mile / 1.6
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
        if DistanceKm.text == "" && DistanceMiles.text == ""
        {
        
        }
        else if DistanceMiles.text != "" && DistanceKm.text != ""
        {
            DistanceKm.text = ""
            DistanceMiles.text = ""
        }
        else if (DistanceMiles.text == "" && DistanceKm.text != "")
        {
            DistanceMiles.text = String (calculateKiloToMiles(kilo: Double(validateEntry(entry: DistanceKm.text!))))
        }
        else if (DistanceKm.text == "" && DistanceMiles.text != ""){
            DistanceKm.text = String (calculateMilesToKilo(mile: Double(validateEntry(entry: DistanceMiles.text!))))
        }
    }


}
