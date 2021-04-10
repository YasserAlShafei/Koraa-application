//
//  EditProfileVC.swift
//  Koraa
//
//  Created by Yasser AlShaFei on 1/27/21.
//

import UIKit



class EditProfileVC: ViewController {

    @IBOutlet weak var firstNameEd: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Creat the bottom line
        /*
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: firstNameEd.frame.height - 2, width: firstNameEd.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        // Remove border on Text Field
        firstNameEd.borderStyle = .none
        
        // Add bottom line to the TextField
        firstNameEd.layer.addSublayer(bottomLine)
        */
    }
    
    
    

}
