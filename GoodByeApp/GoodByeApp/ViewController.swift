//
//  ViewController.swift
//  GoodByeApp
//
//  Created by Sohitha Mallina on 1/24/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var finputOL: UITextField!
    
    @IBOutlet weak var linputOL: UITextField!
    
    @IBOutlet weak var displayOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitOL(_ sender: Any) {
        var fname = finputOL.text!
        var lname = linputOL.text!
        displayOL.text! = "Good Bye!☺️ \(fname) \(lname)"
    }
}
