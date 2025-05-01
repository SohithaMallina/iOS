//
//  ViewController.swift
//  VotingApp
//
//  Created by Sohitha Mallina on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        var ages = inputOL.text!
        var age=Int(ages)!
        if age>=18
        {
            imageOL.image=UIImage(named: "Eligible")
            outputOL.text="Congratulations! Eligible to Vote 🥳"
        }
        else{
            imageOL.image=UIImage(named: "NotEligible")
            outputOL.text="Sorry! You are Not Eligible🙁"
            
        }
        }
        
    }

