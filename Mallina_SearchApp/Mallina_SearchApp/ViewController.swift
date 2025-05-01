//
//  ViewController.swift
//  Mallina_SearchApp
//
//  Created by Sohitha Mallina on 3/30/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchBtnOL: UIButton!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var nextBtnOL: UIButton!
    @IBOutlet weak var prevBtnOL: UIButton!
    @IBOutlet weak var resetBtnOL: UIButton!
    @IBOutlet weak var topicInfoText: UITextView!
    var ourcity = ["rajahmundry","rosemilk","godavari","bridge"];
    var planet = ["earth","mercury","venus","saturn","jupiter"];
    var sports = ["cricket","kabaddi","hockey"];
    var festivals = ["diwali","sankranthi","shivarathri"];
    var courses = ["ios","java","database systems"];
    
    var ourcity_keywords = ["bridge","godavari","banksofriver","farmfields","rosemilk","sweets"];
    var planet_keywords = ["universe","milkyway","space","around the sun"];
    var sports_keywords = ["bat","ball","coach","stick","running"];
    var festivals_keywords = ["crackers","god","garlands","farmer festival","fasting"];
    var courses_keywords = ["uikit","storyboard","netbeans","oops","transactions","sql"];
    
    var currentTopic: String = ""
    var currentIndex: Int = 0
    var currentImages: [String] = []
    var currentDescriptions: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultImage!.image = UIImage(named: "welcome.jpeg")
                searchBtnOL.isEnabled = false
                prevBtnOL.isEnabled = false
                nextBtnOL.isEnabled = false
                topicInfoText.text = "Welcome, Sohitha!!"
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        if let text = searchTextField.text, !text.isEmpty {
                    searchBtnOL.isEnabled = true
                } else {
                    searchBtnOL.isEnabled = false
                }
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
            AudioServicesPlaySystemSound(1113)
            if let searchText = searchTextField.text?.lowercased() {
                        if ourcity_keywords.contains(searchText) {
                            currentTopic = "ourcity"
                            currentImages = ourcity
                            currentDescriptions = ["Rajahmundry is a city on the eastern banks of the sacred Godavari River, in the southeast Indian state of Andhra Pradesh. It’s home to the huge, riverside ISKCON Temple complex. North, along the river, Hindu devotees bathe in the Godavari from Saraswati and Pushkar ghats (bathing steps). The nearby Godavari Bridge offers river views. The ancient Kotilingeshwara Temple is dedicated to the Hindu deity Shiva.",
                                "Rajahmundry Rose Milk, a popular drink from Rajahmundry, India, is a creamy, sweet, and floral beverage known for its unique taste and creamy texture, made with rose syrup and milk. It's a beloved treat, especially during special occasions and a must-try for visitors to the city.",
                                    "The Godavari is India's second longest river after the Ganga River and drains the third largest basin in India, covering about 10% of India's total geographical area. Its source is in Trimbakeshwar, Nashik, Maharashtra.","The Rajahmundry Godavari Bridge, also known as the Kovvur–Rajahmundry Bridge, is a truss bridge spanning the Godavari River in Rajahmundry, India, and is a landmark of the city, connecting East and West Godavari districts."]
                        } else if planet_keywords.contains(searchText) {
                            currentTopic = "planet"
                            currentImages = planet
                            currentDescriptions = ["Earth is the third planet from the Sun, a rocky, terrestrial planet known to support life, and is the only planet in our solar system with liquid water and an oxygen-rich atmosphere. It formed over 4.5 billion years ago and is characterized by its unique features, including plate tectonics and a tilted axis that causes seasons.",
                                                   "Mercury, the smallest and closest planet to the Sun, is a terrestrial planet with a heavily cratered, rocky surface and no moons or atmosphere. It's also the fastest planet in our solar system, completing an orbit around the Sun in just 88 Earth days.",
                                                   "Venus, the second planet from the Sun, is a terrestrial planet known for its extreme heat, dense atmosphere, and slow, retrograde rotation, making its day longer than its year.",
                                                   "Saturn, the sixth planet from the sun and the second-largest in our solar system, is a gas giant known for its prominent ring system and numerous moons, including the large moon Titan.",
                                                   "Jupiter is the largest planet in our solar system, a gas giant composed mainly of hydrogen and helium, known for its swirling cloud stripes, the Great Red Spot, and its many moons, including the four Galilean satellites: Io, Europa, Ganymede, and Callisto."]
                        } else if sports_keywords.contains(searchText) {
                            currentTopic = "sports"
                            currentImages = sports
                            currentDescriptions = ["Cricket is a bat-and-ball team sport where two teams of 11 players compete, with one team batting and the other fielding, aiming to score more runs than the opposing team by hitting the ball and running between wickets.",
                                                   "Kabaddi is a contact team sport originating in South Asia, played between two teams of seven players who take turns raiding the opposing team's half to tag defenders and return to their own side without being tackled.",
                                                   "Hockey is a type of sport in which players try to get points by hitting an object into the other team's goal with a stick. Others believe hockey came from the French word “hoquet” which means shepherd's stick."]
                        } else if festivals_keywords.contains(searchText) {
                            currentTopic = "festivals"
                            currentImages = festivals
                            currentDescriptions = ["Diwali is a time for celebrating with lights, fireworks, feasts, and prayer, and it's a time for families and friends to come together. The festival is a celebration of the victory of light over darkness, good over evil, and knowledge over ignorance",
                                                   "Every year Makar Sankranti is celebrated in the month of January. This festival is dedicated to the Hindu religious sun god Surya.",
                                                   "Maha Shivaratri, meaning 'the great night of Shiva,' is a significant Hindu festival dedicated to Lord Shiva, celebrated with fasting, prayers, and night-long vigils, marking a time for spiritual reflection and seeking blessings."]
                        } else if courses_keywords.contains(searchText) {
                            currentTopic = "courses"
                            currentImages = courses
                            currentDescriptions = ["iOS development course teaches you how to build apps for Apple devices, focusing on languages like Swift and Objective-C, user interface design, API integration, and app deployment, ultimately enabling you to create engaging mobile applications.",
                                                   "Java courses, whether online or in-person, aim to teach you the fundamentals of programming using the Java language, covering topics like object-oriented programming, data structures, and algorithms, to enable you to build various applications. ",
                                                   "A DBMS (Database Management System) course typically covers the fundamentals of organizing, storing, and managing data using databases, including SQL, database design, and potentially database administration concepts."]
                        } else {
                            resultImage.image = UIImage(named: "notfound")
                            topicInfoText.text = "No results found for \(searchText)."
                            return
                        }

                        currentIndex = 0
                        resultImage.image = UIImage(named: currentImages[currentIndex])
                        topicInfoText.text = currentDescriptions[currentIndex]
                        
                        // Enable or disable buttons based on the currentIndex
                        prevBtnOL.isEnabled = false
                        nextBtnOL.isEnabled = currentImages.count > 1
                    }
            }
            
            @IBAction func ShowNextImageBtn(_ sender: Any) {
                            AudioServicesPlaySystemSound(1105)
                if currentIndex < currentImages.count - 1 {
                            currentIndex += 1
                            resultImage.image = UIImage(named: currentImages[currentIndex])
                            topicInfoText.text = currentDescriptions[currentIndex]
                            
                            prevBtnOL.isEnabled = true
                            nextBtnOL.isEnabled = currentIndex < currentImages.count - 1
                        }
            }
            
            @IBAction func ShowPrevImageBtn(_ sender: Any) {
                AudioServicesPlaySystemSound(1105)
                if currentIndex > 0 {
                            currentIndex -= 1
                            resultImage.image = UIImage(named: currentImages[currentIndex])
                            topicInfoText.text = currentDescriptions[currentIndex]
                            
                            nextBtnOL.isEnabled = true
                            prevBtnOL.isEnabled = currentIndex > 0
                        }
            }
            
            @IBAction func ResetBtn(_ sender: Any) {
                AudioServicesPlaySystemSound(1111)
                currentTopic = ""
                        currentIndex = 0
                        searchTextField.text = ""
                        resultImage.image = UIImage(named: "welcome")
                        topicInfoText.text = "Hello, Sohitha!!"
                        
                        prevBtnOL.isEnabled = false
                        nextBtnOL.isEnabled = false
                        searchBtnOL.isEnabled = false
            }
        }

