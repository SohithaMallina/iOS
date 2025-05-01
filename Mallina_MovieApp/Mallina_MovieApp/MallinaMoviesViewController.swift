//
//  ViewController.swift
//  Mallina_MovieApp
//
//  Created by Sohitha Mallina on 4/26/25.
//

import UIKit

class MallinaMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var moviesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Genres"
                moviesTableView.delegate = self
                moviesTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movieGenres.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
            cell.textLabel?.text = movieGenres[indexPath.row].genre
            return cell
        }
        
        // MARK: - TableView Delegate

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listsSegue" {
            if let destination = segue.destination as? MovieListViewController,
               let indexPath = moviesTableView.indexPathForSelectedRow {
                destination.selectedGenre = movieGenres[indexPath.row]
            }
        }
    }


}

