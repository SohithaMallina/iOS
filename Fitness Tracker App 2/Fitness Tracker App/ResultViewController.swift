//
//  ResultViewController.swift
//  Fitness Tracker App
//
//  Created by Sohitha Mallina on 4/1/25.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var activityLabel: UILabel!
        @IBOutlet weak var durationLabel: UILabel!
        @IBOutlet weak var caloriesLabel: UILabel!
        @IBOutlet weak var totalCaloriesLabel: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
        var activityType: String = ""
        var duration: Int = 0
        var caloriesPerMinute: Int = 0
        var totalCalories: Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()

        activityLabel.text = "Activity Type: \(activityType)"
               durationLabel.text = "Entered Duration: \(duration) minutes"
               caloriesLabel.text = "Entered Calories Burned Per Minute: \(caloriesPerMinute)"
               totalCaloriesLabel.text = "Total Calories Burned: \(totalCalories)"
        animateImage()
                setActivityImage()
    }
    func setActivityImage() {
           let imageName: String
           switch activityType.lowercased() {
           case "running": imageName = "running"
           case "cycling": imageName = "cycling"
           case "swimming": imageName = "swimming"
           default: imageName = "default"
           }
           
           imageViewOL.image = UIImage(named: imageName)
           animateImage()
       }
       
       func animateImage() {
           imageViewOL.alpha = 0.0
           UIView.animate(withDuration: 1.5) {
               self.imageViewOL.alpha = 1.0
           }
       }
       }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
