//
//  MovieCell.swift
//  Assg1
//
//  Created by student on 9/6/18.
//  Copyright © 2018 Norah. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet {
            self.titleLabel.text = movie.title
            self.overviewLabel.text = movie.overview
            if movie.posterUrl != nil {
                self.posterImageView.af_setImage(withURL: movie.posterUrl!)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
