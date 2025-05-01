//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Sohitha Mallina on 2/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var crsNumOL: UILabel!
    @IBOutlet weak var crsTitleOL: UILabel!
    @IBOutlet weak var semOfferedOL: UILabel!
    @IBOutlet weak var prevBtnOL: UIButton!
    @IBOutlet weak var nextBtnOL: UIButton!
    var imageIndex = 0
    let courses = [["img01", "44560", "ADB", "Spring2025"],["img02","44642", "Patterns","Spring2025"],["img03", "44643", "IOS", "Spring2025"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageViewOL.image = UIImage(named:courses[0][0])
        crsNumOL.text = courses[0][1]
        crsTitleOL.text = courses[0][2]
        semOfferedOL.text = courses[0][3]
                // previous button is disabled
                prevBtnOL.isEnabled = false
                // next button is enabled
                nextBtnOL.isEnabled = true
    }
    
    @IBAction func prevBtnClicked(_ sender: Any) {
        //decrement the image index
        //update the course details
        //next button should be enabled
        //image index is o, then prev button should be disabled
        imageIndex -= 1
        updateCourseDetails(imageIndex)
                // previous button is disabled
        nextBtnOL.isEnabled = true
        if (imageIndex == 0){
            prevBtnOL.isEnabled = false
        }
        
    }
    @IBAction func nextBtnClicked(_ sender: Any) {
        //previous button should be enabled
        //increment the imageindex
        //update the course details
        //check if the element is at the end of the array, next button should be disabled
        imageIndex += 1
        updateCourseDetails(imageIndex)
                // previous button is disabled
        prevBtnOL.isEnabled = true
        if (imageIndex == courses.count-1){
            nextBtnOL.isEnabled = false
        }
    }
    func updateCourseDetails(_ imageNumber: Int){
        imageViewOL.image = UIImage(named:courses[imageIndex][0])
        crsNumOL.text = courses[imageIndex][1]
        crsTitleOL.text = courses[imageIndex][2]
        semOfferedOL.text = courses[imageIndex][3]
    }
}

