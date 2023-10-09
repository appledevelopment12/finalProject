//
//  findEveryThingCollectionViewCell.swift
//  finalProject
//
//  Created by Rajeev on 09/10/23.
//

//import UIKit
//
//class findEveryThingCollectionViewCell: UICollectionViewCell {
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//}
import UIKit
import Kingfisher

class findEveryThingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!

    @IBOutlet weak var lbl: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()


    }
    var cellmodel:findEveryThingModel?
    {
        didSet
        {
            lbl.text = cellmodel?.imgName
            let url = URL(string: (cellmodel?.img)!)
            if let url = url
            {

                KingfisherManager.shared.retrieveImage(with: url  as Resource, options: nil, progressBlock: nil)
                {
                    (image,error,cache,imageURL) in
                    self.img.image = image
                    self.img.kf.indicatorType = .activity
                }
              }
            }
         }

}
