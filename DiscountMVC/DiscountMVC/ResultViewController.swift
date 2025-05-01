//
//  ResultViewController.swift
//  DiscountMVC
//
//  Created by Sohitha Mallina on 3/20/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var amountOL: UILabel!
    
    @IBOutlet weak var discountOL: UILabel!
    
    @IBOutlet weak var priceAfterDiscountOL: UILabel!
    
    var amount = ""
    var discount = ""
    var priceAfterDiscount = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        amountOL.text = "Entered Amount: \(amount)"
        discountOL.text = "Entered Discount Amount: \(discount)"
        priceAfterDiscountOL.text = "Final Price Afer Discount: \(priceAfterDiscount)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
