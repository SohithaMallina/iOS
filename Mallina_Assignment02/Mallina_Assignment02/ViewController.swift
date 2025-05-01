//
//  ViewController.swift
//  Mallina_Assignment02
//
//  Created by Bala Yalla on 2/6/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var billAmountOutlet: UITextField!
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func submitBtn(_ sender: Any) {
        let name=nameOutlet.text!
        let bill = Double(billAmountOutlet.text!)!
        let tipper = Double(tipPercentageOutlet.text!)!
        nameLabel.text="Name: \(name)"
        billAmountLabel.text="Bill: $\(bill)"
        tipPercentageLabel.text="Tip Amount: $\(bill*tipper/100)"
        let totalBill = bill+(bill*tipper)/100
        totalAmountLabel.text="Total Amount: $\(totalBill)"
    }
    @IBAction func resetBtn(_ sender: Any) {
        nameLabel.text=""
        billAmountLabel.text=""
        tipPercentageLabel.text=""
        totalAmountLabel.text=""
        nameOutlet.text=""
        billAmountOutlet.text=""
        tipPercentageOutlet.text=""
    }
}

