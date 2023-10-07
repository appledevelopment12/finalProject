//
//  flightCollectionViewCell.swift
//  finalProject
//
//  Created by Rajeev on 07/10/23.
//

import UIKit

class flightCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var celllView:UIView!
    @IBOutlet weak var IMG: UIImageView!
    @IBOutlet weak var mumView: UIView!
    @IBOutlet weak var delhiView: UIView!
    @IBOutlet weak var lblname: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        celllView.layer.cornerRadius = 20
        mumView.layer.cornerRadius = 20
        delhiView.layer.cornerRadius = 20
        
    }

}
