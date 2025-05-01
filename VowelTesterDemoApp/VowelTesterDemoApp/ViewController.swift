//
//  ViewController.swift
//  VowelTesterDemoApp
//
//  Created by Sohitha Mallina on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        if let inputText = inputOL.text, let firstChar = inputText.first {
                    if isVowel(firstChar) {
                        outputOL.text = "'\(firstChar)' is a vowel."
                    } else {
                        outputOL.text = "'\(firstChar)' is not a vowel."
                    }
                } else {
                    outputOL.text = "Please enter a single character."
                }
            }
    func isVowel(_ character: Character) -> Bool {
            if character == "a" || character == "e" || character == "i" || character == "o" || character == "u" ||
               character == "A" || character == "E" || character == "I" || character == "O" || character == "U" {
                return true
            } else {
                return false
            }
        }
    }

