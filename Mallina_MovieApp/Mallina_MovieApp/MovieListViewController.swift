//
//  MovieListViewController.swift
//  Mallina_MovieApp
//
//  Created by Sohitha Mallina on 4/26/25.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var movieListTableView: UITableView!
    var selectedGenre: Movies?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = selectedGenre?.genre
                movieListTableView.delegate = self
                movieListTableView.dataSource = self
            }
            
            // MARK: - TableView DataSource
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return selectedGenre?.list_Array.count ?? 0
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
                cell.textLabel?.text = selectedGenre?.list_Array[indexPath.row].movieName
                return cell
            }
            
            
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieInfoSegue" {
            if let destination = segue.destination as? MovieInfoViewController,
               let indexPath = movieListTableView.indexPathForSelectedRow {
                destination.selectedMovie = selectedGenre?.list_Array[indexPath.row]
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

}
