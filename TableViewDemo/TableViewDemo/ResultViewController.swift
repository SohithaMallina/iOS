//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by Sohitha Mallina on 4/8/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    var product:Product?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DisplayLabel.text = "The Product name is \((product?.productName)!) and its description is \((product?.productDescription)!)"
        
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
