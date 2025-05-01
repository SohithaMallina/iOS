//
//  ViewController.swift
//  ClimateApp
//
//  Created by Sohitha Mallina on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitFac(_ sender: Any) {
        
        var temp=inputOL.text!
        var temparature=Int(temp)!
        if temparature>=60
        {
            imageOL.image=UIImage(named: "hot")
            outputOL.text="Hot"
        }
        else{
            imageOL.image=UIImage(named: "cold")
            outputOL.text="Cold"
            
        }
    }
    
    
    
}

