//
//  DetailViewController.swift
//  Assg1
//
//  Created by student on 9/8/18.
//  Copyright © 2018 Norah. All rights reserved.
//

import UIKit

enum MovieKeys {
    static let title = "title"
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
}

class DetailViewController: UIViewController {

    @IBOutlet var backDropImageView: UIImageView!
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var releaseDateLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let movie = movie {
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.release_date
            overviewLabel.text = movie.overview
            backDropImageView.af_setImage(withURL: movie.backdropUrl!)
            posterImageView.af_setImage(withURL: movie.posterUrl!)
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
