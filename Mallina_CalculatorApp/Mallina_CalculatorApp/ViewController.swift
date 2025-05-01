//
//  ViewController.swift
//  Mallina_CalculatorApp
//
//  Created by Sohitha Mallina on 2/19/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultOL: UILabel!
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonSubtract: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonModulus: UIButton!
    
    
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var signChange: UIButton!
    @IBOutlet weak var buttonDecimal: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    @IBOutlet weak var buttonAllClear: UIButton!
    
    // input to read current and previous inputs from user
    var currInput = ""
    var prevInput = ""
    
    // entered operator needs to be stored
    var selectedOperator: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultOL.text = "0"
    }
    
    
    @IBAction func numClicked(_ sender: UIButton) {
        if let number = sender.titleLabel?.text {
                // Append the number or operator to currInput and update the result
                currInput += number
                resultOL.text = "\(prevInput) \(selectedOperator ?? "") \(currInput)"
            }
    }
    
    @IBAction func opeEnter(_ sender: UIButton) {
        if let operatorType = sender.titleLabel?.text {
                // Ensure the current input is valid before switching operators
                if !currInput.isEmpty {
                    // Save current input as previous input
                    prevInput = currInput
                    currInput = ""
                    selectedOperator = operatorType
                    
                    // Display the operator in the result label
                    resultOL.text = "\(prevInput) \(operatorType) \(currInput)"
                }
            }
    }
    
    @IBAction func equalClicked(_ sender: UIButton){
        // Check if both prevInput and currInput are valid and non-empty
        if let prevNum = Double(prevInput), let currNum = Double(currInput), let operatorType = selectedOperator {
            var result: Double = 0
                switch operatorType {
                case "*":
                    result = prevNum * currNum
                case "/":
                    if currNum != 0 {
                        result = prevNum / currNum
                    } else {
                        resultOL.text = "Not a number(nan)"
                        return
                    }
                case "%":
                    result = prevNum.truncatingRemainder(dividingBy: currNum)
                case "+":
                    result = prevNum + currNum
                case "-":
                    result = prevNum - currNum
                default:
                    resultOL.text = "Error: Invalid Operation"
                    return
                }
            // Display the result
            if result == floor(result) {
                resultOL.text = "\(Int(result))"
            } else {
                // If either prevInput or currInput are invalid (empty or non-numeric), show an error
                resultOL.text = String(format: "%.10g",result)
            }
        } else{
            resultOL.text = "Error: Invalid format"
        }
    }
    @IBAction func allClear(_ sender: UIButton) {
        // when the user clicked ac all input data and results need to be cleared
        prevInput = ""
        currInput = ""
        selectedOperator = nil
        resultOL.text = "0"
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        // When "C" button is clicked, remove the last character (operand or operator)
            if !currInput.isEmpty {
                currInput.removeLast()  // Remove last character of current input
                resultOL.text = "\(prevInput) \(selectedOperator ?? "") \(currInput)" // Update result label with the remaining expression
            } else if !prevInput.isEmpty && selectedOperator != nil {
                // If the current input is empty but previous input and selected operator exist,
                // clear the operator and update the result with the previous operand
                selectedOperator = nil
                resultOL.text = "\(prevInput)"
            }
    }
    @IBAction func decimalBtn(_ sender: UIButton){
        // check for decimal before appending to result
        if !currInput.contains("."){
            currInput += "."
            if let operatorType = selectedOperator {
                            resultOL.text = "\(prevInput) \(operatorType ?? "") \(currInput)"
                        } else {
                            resultOL.text = "\(currInput)"
          }
        }
    }
    
    @IBAction func signChange(_ sender: UIButton){
        // when sign change button is clicked current number needs to be changed
        if let currentNumber = Double(currInput) {
            currInput = "\(currentNumber * -1)"
            if let operatorType = selectedOperator {
                resultOL.text = "\(prevInput) \(operatorType ?? "") \(currInput)"
            } else {
                resultOL.text = "\(currInput)"
            }
        }
    }
}
