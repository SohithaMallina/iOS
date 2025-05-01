//
//  MovieInfoViewController.swift
//  Mallina_MovieApp
//
//  Created by Sohitha Mallina on 4/26/25.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    @IBOutlet weak var showInfoAction: UIButton!
    
    @IBOutlet weak var movieInfoOutlet: UITextView!
    var selectedMovie: MovieList?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = selectedMovie?.movieName
                if let movie = selectedMovie {
                    movieImageViewOutlet.image = UIImage(named: movie.movieImage)
                    animateImage()
                }
            }
            
            @IBAction func showInfoAction(_ sender: UIButton) {
                movieInfoOutlet.text = selectedMovie?.movieInfo
            }
            
            func animateImage() {
                UIView.animate(withDuration: 1.0,
                               animations: {
                                self.movieImageViewOutlet.alpha = 0.0
                               },
                               completion: { _ in
                                UIView.animate(withDuration: 1.0) {
                                    self.movieImageViewOutlet.alpha = 1.0
                                }
                               })
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
