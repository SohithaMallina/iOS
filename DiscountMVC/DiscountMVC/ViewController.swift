//
//  ViewController.swift
//  DiscountMVC
//
//  Created by Sohitha Mallina on 3/20/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discountOL: UITextField!
    
    var priceAfterDiscount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalculateBtn(_ sender: Any) {
        //Read the amount from user and convert its datatype to double and assign it to a variable
        var amount = Double(amountOL.text!)
        //Read the discount amount rate and convert its datatype to  double and assign it to a variable
        var discountRate = Double(discountOL.text!)
        
        // Calculate price after discount
        priceAfterDiscount = amount! * (1-discountRate!/100)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition ==  "ResultSegue"
        {
            //create the destination as result view controller
            var destination = segue.destination as! ResultViewController
            
            // pass the data
            destination.amount = amountOL.text!
            destination.discount = discountOL.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
        }
        
        
    }
}
