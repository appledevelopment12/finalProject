//
//  hotelCollectionViewCell.swift
//  finalProject
//
//  Created by Rajeev on 07/10/23.
//

import UIKit

class hotelCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var heartimg: UIImageView!
   
    @IBOutlet weak var heartView: UIView!
    
    
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var ratingView: UIView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var offsetView: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        heartimg.layer.cornerRadius = heartimg.frame.height / 2
        heartView.layer.cornerRadius = heartView.frame.height / 2

        ratingView.layer.cornerRadius = ratingView.frame.height / 2
        cellView.layer.cornerRadius = 20
        offsetView.layer.cornerRadius = offsetView.frame.height / 2
        offsetView.layer.shadowColor = UIColor.blue.cgColor
        offsetView.layer.shadowOffset = .zero
        offsetView.layer.shadowOpacity = 0.2
        offsetView.layer.shadowRadius = 4
    }

}
