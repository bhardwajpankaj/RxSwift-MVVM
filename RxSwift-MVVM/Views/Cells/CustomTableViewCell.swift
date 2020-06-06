//
//  CustomTableViewCell.swift
//  RxSwift-MVVM
//
//  Created by Pankaj Bhardwaj on 05/06/20.
//  Copyright © 2020 pankaj. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var trackImage : UIImageView!
    @IBOutlet weak var trackArtist : UILabel!
    @IBOutlet weak var trackTitle: UILabel!
    
    
    public var cellTrack : Track! {
        didSet {
            self.trackImage.clipsToBounds = true
            self.trackImage.layer.cornerRadius = 3
            self.trackImage.loadImage(fromURL: cellTrack.trackArtWork)
            self.trackTitle.text = cellTrack.name
            self.trackArtist.text = cellTrack.artist
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
    }
    override func prepareForReuse() {
        trackImage.image = UIImage()
    }
}
