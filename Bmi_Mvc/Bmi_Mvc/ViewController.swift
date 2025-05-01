//
//  ViewController.swift
//  Bmi_Mvc
//
//  Created by Sohitha Mallina on 3/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var HFeetOL: UITextField!
    @IBOutlet weak var HInchesOL: UITextField!
    @IBOutlet weak var WeightLbsOL: UITextField!
    var feet = 0
    var inches = 0
    var lbs = 0.0
    var bmi = 0.0
    var categoryname = ""
    var imgname = ""
    var healthadvice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalculateBTN(_ sender: UIButton) {
        feet = Int(HFeetOL.text!)!
        inches = Int(HInchesOL.text!)!
        lbs = Double(WeightLbsOL.text!)!
        var height = feet * 12 + inches
        bmi = 703 * (lbs / Double(height * height))
        
        if bmi < 18.5 {
            categoryname = "UnderWeight"
            imgname = "underWeight"
            healthadvice = "Ear more calories"
        }
        else if bmi <= 24.9
        {
            categoryname = "Normal"
            imgname = "normal"
            healthadvice = "you are good maintain this"
        }
        else if bmi <= 29.9
        {
            categoryname = "OverWeight"
            imgname = "overWeight"
            healthadvice = "Prioritize weight loss"
        }
        else{
            categoryname = "Obese"
            imgname = "obese"
            healthadvice = "Prioritize weight loss and maintain a healthy diet"
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transistion = segue.identifier!
                if transistion == "resultSegue"
                {
                    var destination = segue.destination as! ResultViewController
                    
                    destination.enteredhfeet = feet
                    destination.enteredhinches = inches
                    destination.enteredwlbs = lbs
                    destination.bmiresult = bmi
                    destination.categoryMessage = categoryname
                    destination.bmiImageName = imgname
                    destination.healthMessage = healthadvice
        }
    }
}
