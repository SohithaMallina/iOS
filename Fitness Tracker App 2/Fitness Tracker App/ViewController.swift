//
//  ViewController.swift
//  Fitness Tracker App
//
//  Created by Sohitha Mallina on 4/1/25.
//
import UIKit

class ViewController: UIViewController {
        @IBOutlet weak var activityTypeTextField: UITextField!
        @IBOutlet weak var durationTextField: UITextField!
        @IBOutlet weak var caloriesPerMinuteTextField: UITextField!
        @IBOutlet weak var calculateButton: UIButton!
        
        var totalCaloriesBurned = 0.0
        
    override func viewDidLoad() {
        super.viewDidLoad()
               // Do any additional setup after loading the view.
        calculateButton.isEnabled = false
        activityTypeTextField.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
        durationTextField.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
        caloriesPerMinuteTextField.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
    }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
                   // Reset all input fields when navigating back to View 1
            activityTypeTextField.text = ""
            durationTextField.text = ""
            caloriesPerMinuteTextField.text = ""
            calculateButton.isEnabled = false
        }
        
        @IBAction func calculateCalories(_ sender: UIButton) {
            if let durationText = durationTextField.text, !durationText.isEmpty,
               let caloriesText = caloriesPerMinuteTextField.text, !caloriesText.isEmpty {
                        
                        if let duration = Double(durationText), let caloriesPerMinute = Double(caloriesText) {
                            totalCaloriesBurned = duration * caloriesPerMinute
                            performSegue(withIdentifier: "ResultSegue", sender: self)
                        } else {
                            showAlert(message: "Please enter valid numbers for Duration and Calories per Minute.")
                        }
                    } else {
                        showAlert(message: "All fields are required.")
                    }
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ResultSegue" {
                      if let destination = segue.destination as? ResultViewController {
                          destination.activityType = activityTypeTextField.text ?? "Unknown Activity"
                          destination.duration = Int(durationTextField.text ?? "0") ?? 0
                          destination.caloriesPerMinute = Int(caloriesPerMinuteTextField.text ?? "0") ?? 0
                          destination.totalCalories = totalCaloriesBurned

                      }
                  }
        }
    @objc func textFieldsDidChange(_ sender: UIButton) {
        let isFormFilled = !(activityTypeTextField.text?.isEmpty ?? true) &&
        !(durationTextField.text?.isEmpty ?? true) &&
        !(caloriesPerMinuteTextField.text?.isEmpty ?? true)
        calculateButton.isEnabled = isFormFilled
    }
    
        @IBAction func resetFields(_ sender: UIButton) {
            activityTypeTextField.text = ""
            durationTextField.text = ""
            caloriesPerMinuteTextField.text = ""
        }
        
        func showAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true, completion: nil)
        }
    }
