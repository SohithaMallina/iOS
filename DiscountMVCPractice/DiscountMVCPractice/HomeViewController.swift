//
//  ViewController.swift
//  DiscountMVCPractice
//
//  Created by Sohitha Mallina on 3/22/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var AmountOutlet: UITextField!
        
        
        @IBOutlet weak var DiscountRateOutlet: UITextField!
        
        var priceAfterDiscount = 0.0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        
        @IBAction func CalcDiscountPressed(_ sender: UIButton) {
            //Read the text from the textfields
            var amount = Double(AmountOutlet.text!)
            print(amount!)
            
            var discountRate = Double(DiscountRateOutlet.text!)
            
            print(discountRate!)
            
             priceAfterDiscount = amount! - (amount!*discountRate!/100)
            print(priceAfterDiscount)
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            var transition = segue.identifier
            if transition == "ResultSegue"{
                //Create a destination
                var destination = segue.destination as! ResultViewController
                
                destination.amount = AmountOutlet.text!
                destination.discRate = DiscountRateOutlet.text!
                destination.priceAfterDisc = String(priceAfterDiscount)
            }
        }
        

    }
