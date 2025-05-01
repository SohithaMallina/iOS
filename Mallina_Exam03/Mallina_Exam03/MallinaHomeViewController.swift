//
//  ViewController.swift
//  Mallina_Exam03
//
//  Created by Sohitha Mallina on 4/22/25.
//

import UIKit
class MallinaHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mallinaTVOL: UITableView!
    var sortedGames: [Game] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Games"
                mallinaTVOL.delegate = self
        mallinaTVOL.dataSource = self
        sortedGames = games.sorted { ($0.name ?? "") < ($1.name ?? "") }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return sortedGames.count
       }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return games.count
//        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mallinaCell", for: indexPath)
                    cell.textLabel?.text = sortedGames[indexPath.row].name
                    return cell
        }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "cheekatiDescriptionSegue", sender: indexPath.row)
//    }
//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
               if transition == "mallinaDescriptionSegue" {
                   let destination = segue.destination as! MallinaGameController
                   if let index = mallinaTVOL.indexPathForSelectedRow?.row {
                       destination.game = sortedGames[index]
                   }
               }
        
       // if segue.identifier == "MedabalimiDescriptionSegue",
         //  let destinationVC = segue.destination as? MedabalimiGameController,
           //let index = sender as? Int {
            //destinationVC.game = games[index]
        //}
    }
}
