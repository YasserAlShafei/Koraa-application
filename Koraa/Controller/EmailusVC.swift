//
//  EmailusVC.swift
//  Koraa
//
//  Created by Yasser AlShaFei on 2/1/21.
//

import UIKit

class EmailusVC: ViewController {

    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var massegeTf: UITextField!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var imageView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lineUnderTF(emailTf)
        lineUnderTF(massegeTf)
        
        cornerImage(imageProfile)
        
        
    }
    
    

    @IBAction func cornerImage(_ sender: UIView) {
        sender.layer.borderWidth = 11
        sender.layer.masksToBounds = false
        sender.layer.borderColor = UIColor.white.cgColor
        //sender.layer.borderColor = UIColor.init(white: CGFloat.init(1.0), alpha: CGFloat.init(1.0))
        
        let opacity:CGFloat = 0.6
        let borderColor = UIColor.white
        sender.layer.borderColor = borderColor.withAlphaComponent(opacity).cgColor
        
        sender.layer.cornerRadius = sender.frame.height/2
        sender.clipsToBounds = true
    }
    
    @IBAction func lineUnderTF(_ sender: UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: sender.frame.height - 2, width: sender.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        sender.borderStyle = .none
        sender.layer.addSublayer(bottomLine)
    }
}
