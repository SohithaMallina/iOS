//
//  ViewController.swift
//  Travel Buddy App
//
//  Created by Durga Ramdas Raja on 4/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotpasswordOL: UILabel!
    @IBOutlet weak var logoOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setting up the "Forgot password?" label with an underline and color
        let text = "Forgot password?"
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(.foregroundColor, value: UIColor.black, range: NSRange(location: 0, length: text.count))
        attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: text.count))
        
        forgotpasswordOL.attributedText = attributedString
        forgotpasswordOL.isUserInteractionEnabled = true
        forgotpasswordOL.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(navigateToNextScreen)))
        
        // Setting up the logo image
        logoOL.image = UIImage(named: "logo.png")
        
    }
               
               // Left menu button
               

        // Action method for the settings button
        
    
    // Navigates to the forgot password screen
    @objc func navigateToNextScreen() {
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "forgotpasswordvc") {
            navigationController?.pushViewController(destinationVC, animated: true)
        }
    }


}
