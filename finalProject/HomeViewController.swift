//
//  againViewController.swift
//  finalProject
//
//  Created by Rajeev on 07/10/23.
//
import UIKit


class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var rotationView: UIView!
    @IBOutlet weak var viewimage: UIView!
    @IBOutlet weak var totalImageView: UIView!
    
    
    @IBOutlet weak var tab11:UIView!
    @IBOutlet weak var tab12:UIView!
    @IBOutlet weak var tab13:UIView!
    @IBOutlet  weak var alllbl:UILabel!
    @IBOutlet weak var latestlbl:UILabel!
    @IBOutlet weak var popularlbl:UILabel!
    
    
    // Data store in array
    var everyThingcollectionImageName = ["Flight","Hotel","Music","Sports","Meeting","Weather","Dating","Jobs"]
    var everyThingCollectionimage = ["flight","hotel","music","sports","meeting","weather","dating","jobs"]
    var hotelCollectionViewimage = ["mistry","mistry","mistry","mistry","misty","mistry","mistry"]
    var flightCollectionViewimage = ["indigo","vistra","indigo","vistra","indigo","vistra"]
    var flightCollectionViewimageName = ["Indigo","Vistra","Indigo","Vistra","Indigo","Vistra"]

    
    
    
    //*** ViewController
    
    
    @IBOutlet weak var everyThingCollectionView: UICollectionView!
    @IBOutlet weak var hotelCollectionView:UICollectionView!
    @IBOutlet weak var flightCollectionView:UICollectionView!
    
    
     // ** Find AnythingView
    @IBOutlet weak var FirstView: UIView!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var searchView: UIView!
    
    
    
    //   **tabBarView
    @IBOutlet weak var tab1:UIView!
    @IBOutlet weak var title1:UILabel!
    @IBOutlet weak var tab2:UIView!
    @IBOutlet weak var title2:UILabel!
    @IBOutlet weak var tab3:UIView!
    @IBOutlet weak var title3:UILabel!
    @IBOutlet weak var tab4:UIView!
    @IBOutlet weak var title4:UILabel!
    @IBOutlet weak var tab5:UIView!
    @IBOutlet weak var title5:UILabel!
    @IBOutlet weak var tabupperView: UIView!
    
    
    
    // ******   viewdidload  VIEW *****
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        rotationView.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        viewimage.layer.cornerRadius = 20
        totalImageView.layer.cornerRadius = 20
        
        tab1.backgroundColor = hexStringToUIColor(hex: "#6ac5fe")
        
        tab1.layer.cornerRadius = tab1.frame.size.height/2
        tab2.layer.cornerRadius = tab2.frame.size.height/2
        tab3.layer.cornerRadius = tab3.frame.size.height/2
        tab4.layer.cornerRadius = tab4.frame.size.height/2
        tab5.layer.cornerRadius = tab5.frame.size.height/2
        tabupperView.layer.cornerRadius = tabupperView.frame.size.height/2
        cornerRadius()
        delegatedatasource()
        xibregisterCell()
    }
 
    
    
   
    
    
    
    @IBAction func sttroiesSlide(_ sender: UIButton)
    {

      //  print("Rohit")
        switch sender.tag
        {

        case 11:
            print("\(sender.tag)")

            alllbl.textColor = UIColor.red
            tab11.backgroundColor = UIColor.red

            tab12.backgroundColor = UIColor.white
            tab13.backgroundColor = UIColor.white
            popularlbl.textColor = UIColor.black
            latestlbl.textColor = UIColor.black

        case 12:
            latestlbl.textColor = UIColor.red
            tab12.backgroundColor = UIColor.red

            tab11.backgroundColor = UIColor.white
            tab13.backgroundColor = UIColor.white
            popularlbl.textColor = UIColor.black
            alllbl.textColor = UIColor.black
        case 13:
            popularlbl.textColor = UIColor.red
            tab13.backgroundColor = UIColor.red

            tab11.backgroundColor = UIColor.white
            tab12.backgroundColor = UIColor.white
            latestlbl.textColor = UIColor.black
            alllbl.textColor = UIColor.black
        default:
            latestlbl.textColor = UIColor.white

            alllbl.textColor = UIColor.black
            popularlbl.textColor = UIColor.white
        }


    }


    
    
    
    //  *** cornerRadius
    func cornerRadius()
    {
        FirstView.layer.cornerRadius = 20
        colorView.layer.cornerRadius = 20
        thirdView.layer.cornerRadius = 20
        searchView.layer.cornerRadius = searchView.frame.height/2
    }
    
    
    
    
    // ***  XIB REGISTER CELL **** -------------------
    func xibregisterCell()
    {
        let nibCell1 = UINib(nibName: "findEveryThingCollectionViewCell", bundle: nil)
        everyThingCollectionView.register(nibCell1, forCellWithReuseIdentifier: "cell1")
        
        let nibCell2 = UINib(nibName: "hotelCollectionViewCell", bundle: nil)
        hotelCollectionView.register(nibCell2, forCellWithReuseIdentifier: "hotelCell")
        
        let nibCell3 = UINib(nibName: "flightCollectionViewCell", bundle: nil)
        flightCollectionView.register(nibCell3, forCellWithReuseIdentifier: "flightCell")
    }
    
    
    
    // ** DELEGATE DATASOURCE **** ----------------------
    func delegatedatasource()
    {
        everyThingCollectionView.delegate = self
        everyThingCollectionView.dataSource = self
        hotelCollectionView.delegate = self
        hotelCollectionView.dataSource = self
        flightCollectionView.delegate = self
        flightCollectionView.dataSource = self
        
    }
    
    @IBAction func btnaction(_ sender: UIButton)
    {
        print("\(sender.tag)")
        switch sender.tag
        {

        case 1:
            UIView.animate(withDuration:0.5)
            {
                self.tab1.backgroundColor = self.hexStringToUIColor(hex: "#6ac5fe")
                self.title1.text = "Home"
                self.title1.textColor = UIColor.white
                self.tab1.layoutIfNeeded()

                self.tab2.backgroundColor = UIColor.clear
                self.title2.text = ""
                self.tab3.backgroundColor = UIColor.clear
                self.title3.text = ""
                self.tab4.backgroundColor = UIColor.clear
                self.title4.text = ""
                self.tab5.backgroundColor = UIColor.clear
                self.title5.text = ""
                self.view.layoutIfNeeded()
                
                
            }
            
        case 2:
            UIView.animate(withDuration:0.5)
            {
                self.tab2.backgroundColor = self.hexStringToUIColor(hex: "#6ac5fe")
                self.title2.text = "Search"
                self.title2.textColor = UIColor.white
                
                self.tab1.backgroundColor = UIColor.clear
                self.title1.text = ""
                self.tab3.backgroundColor = UIColor.clear
                self.title3.text = ""
                self.tab4.backgroundColor = UIColor.clear
                self.title4.text = ""
                self.tab5.backgroundColor = UIColor.clear
                self.title5.text = ""
                self.view.layoutIfNeeded()
            }

        case 3:
            UIView.animate(withDuration:0.5)
            {
                self.tab3.backgroundColor = self.hexStringToUIColor(hex: "#6ac5fe")
                self.title3.text = "Add"
                self.title3.textColor = UIColor.white
                
                self.tab1.backgroundColor = UIColor.clear
                self.title1.text = ""
                self.tab2.backgroundColor = UIColor.clear
                self.title2.text = ""
                self.tab4.backgroundColor = UIColor.clear
                self.title4.text = ""
                self.tab5.backgroundColor = UIColor.clear
                self.title5.text = ""
                self.view.layoutIfNeeded()

            }
        case 4:
            
            UIView.animate(withDuration:0.5)
            {
                self.tab4.backgroundColor = self.hexStringToUIColor(hex: "#6ac5fe")
                self.title4.text = "Message"
                self.title4.textColor = UIColor.white
                
                self.tab1.backgroundColor = UIColor.clear
                self.title1.text = ""
                self.tab2.backgroundColor = UIColor.clear
                self.title2.text = ""
                self.tab3.backgroundColor = UIColor.clear
                self.title3.text = ""
                self.tab5.backgroundColor = UIColor.clear
                self.title5.text = ""
                self.view.layoutIfNeeded()

            }
        case 5:
            UIView.animate(withDuration:0.5)
            {
                self.tab5.backgroundColor = self.hexStringToUIColor(hex: "#6ac5fe")
                self.title5.text = "Me"
                self.title5.textColor = UIColor.white
                
                self.tab1.backgroundColor = UIColor.clear
                self.title1.text = ""
                self.tab2.backgroundColor = UIColor.clear
                self.title2.text = ""
                self.tab3.backgroundColor = UIColor.clear
                self.title3.text = ""
                self.tab4.backgroundColor = UIColor.clear
                self.title4.text = ""
                self.view.layoutIfNeeded()

            }
        default:
            self.tab5.backgroundColor = self.hexStringToUIColor(hex: "#6ac5fe")
            self.title5.text = "home"
            self.title5.textColor = UIColor.white
            
            self.tab1.backgroundColor = UIColor.clear
            self.title1.text = ""
            self.tab2.backgroundColor = UIColor.clear
            self.title2.text = ""
            self.tab3.backgroundColor = UIColor.clear
            self.title3.text = ""
            self.tab4.backgroundColor = UIColor.clear
            self.title4.text = ""
            
        }
        
    }
    func hexStringToUIColor (hex:String) -> UIColor
    {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    


}

extension HomeViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == everyThingCollectionView
        {
            return everyThingCollectionimage.count
        }
        else
        {
            return hotelCollectionViewimage.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == everyThingCollectionView
        {
            let cell = everyThingCollectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)  as! findEveryThingCollectionViewCell
            cell.img.image = UIImage(named: everyThingCollectionimage[indexPath.item])
            cell.lbl.text = everyThingcollectionImageName[indexPath.item]
            return cell
        }
        else if collectionView == hotelCollectionView
        {
            let cell = hotelCollectionView.dequeueReusableCell(withReuseIdentifier: "hotelCell", for: indexPath) as! hotelCollectionViewCell
            cell.img.image = UIImage(named: hotelCollectionViewimage[indexPath.item])
            return cell
        }
        else
        {
            let cell = flightCollectionView.dequeueReusableCell(withReuseIdentifier: "flightCell", for: indexPath) as! flightCollectionViewCell
            cell.IMG.image = UIImage(named: flightCollectionViewimage[indexPath.item])
            cell.lblname.text = flightCollectionViewimageName[indexPath.item]
            return cell
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == everyThingCollectionView
        {
            return 10
        }
        else if collectionView == hotelCollectionView
        {
            return 10
        }
        else
        {
            return 10
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == everyThingCollectionView
        {
            return 10
        }
        else if  collectionView == hotelCollectionView
        {
            return 10
        }
        else
        {
            return 10
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == everyThingCollectionView
        {
            return CGSize(width: everyThingCollectionView.bounds.width/4-10, height: everyThingCollectionView.bounds.height/2-10)
        }
        else if collectionView == hotelCollectionView
        {
            return CGSize(width: hotelCollectionView.bounds.width/1.4-10, height: hotelCollectionView.bounds.height/1-10)
        }
        else
        {
            return CGSize(width: flightCollectionView.bounds.width/1.6-10, height: flightCollectionView.bounds.height/1-10)

        }
        

    }
}


