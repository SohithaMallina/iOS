//
//  ViewController.swift
//  StringInitialsApp
//
//  Created by Sohitha Mallina on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finputOL: UITextField!
    
    @IBOutlet weak var linputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        //Read the firstname and store it in var fname
        var fname = finputOL.text!
        //Read the lastname and store it in var lname
        var lname = linputOL.text!
        //we need to get first letter of first name and first letter of last name
        var firstInitial = fname.prefix(1).uppercased()
        var lastInitial = lname.prefix(1).uppercased()
        //Display result in the outputOL
        outputOL.text = "\(firstInitial).\(lastInitial)."
    }
    
}

