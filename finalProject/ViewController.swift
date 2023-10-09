//
//  ViewController.swift
//  finalProject
//
//  Created by Rajeev on 06/10/23.
//

import UIKit
import Firebase
import FirebaseDatabase


class ViewController: UIViewController {

    
    
    
    
    //  **** collectionView  ****
    
    
    
    
    
    
    //      ******* Tabbar   *******
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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tab1.layer.cornerRadius = tab1.frame.size.height/2
        tab2.layer.cornerRadius = tab2.frame.size.height/2
        tab3.layer.cornerRadius = tab3.frame.size.height/2
        tab4.layer.cornerRadius = tab4.frame.size.height/2
        tab5.layer.cornerRadius = tab5.frame.size.height/2
        tabupperView.layer.cornerRadius = tabupperView.frame.size.height/2
        
    }
    
    @IBAction func btnaction(_ sender: UIButton)
    {
        switch sender.tag
        {
        case 1:
            UIView.animate(withDuration:0.5)
            {
                self.tab1.backgroundColor = UIColor.red
                self.title1.text = "home"
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
                self.tab2.backgroundColor = UIColor.red
                self.title2.text = "Home"
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
                self.tab3.backgroundColor = UIColor.red
                self.title3.text = "Search"
                self.title3.textColor = UIColor.white
                
                self.tab1.backgroundColor = UIColor.clear
                self.title1.text = ""
                self.tab2.backgroundColor = UIColor.clear
                self.title2.text = ""
                self.tab4.backgroundColor = UIColor.clear
                self.title4.text = ""
                self.tab5.backgroundColor = UIColor.clear
                self.title5.text = ""
            }
        case 4:
            
            UIView.animate(withDuration:0.5)
            {
                self.tab4.backgroundColor = UIColor.red
                self.title4.text = "Plus"
                self.title4.textColor = UIColor.white
                
                self.tab1.backgroundColor = UIColor.clear
                self.title1.text = ""
                self.tab2.backgroundColor = UIColor.clear
                self.title2.text = ""
                self.tab3.backgroundColor = UIColor.clear
                self.title3.text = ""
                self.tab5.backgroundColor = UIColor.clear
                self.title5.text = ""
            }
        case 5:
            UIView.animate(withDuration:0.5)
            {
                self.tab5.backgroundColor = UIColor.red
                self.title5.text = "Message"
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
        default:
            self.tab5.backgroundColor = UIColor.red
            self.title5.text = "profile"
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


}

