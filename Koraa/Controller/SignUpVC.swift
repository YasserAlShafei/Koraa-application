//
//  SignUpVC.swift
//  Koraa
//
//  Created by Yasser AlShaFei on 2/15/21.
//

import UIKit



class SignUpVC: ViewController {

    @IBOutlet weak var viewE: OvalView!
    @IBOutlet weak var BtnSignIn: UIButton!
    @IBOutlet weak var BtnSignUp: UIButton!
    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var btnChangeLangauge: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        borderSize(viewE)
        BtnSignIn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "button_signin", comment: ""), for: .normal)
        btnSkip.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "button_skip", comment: ""), for: .normal)
        BtnSignUp.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "button_if_have_account", comment: ""), for: .normal)
        btnChangeLangauge.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "change_language", comment: ""), for: .normal)
    }
    
    
    
    
    // -- For Change Language  --
    // -- Start
    @IBAction func changeLanguage(_ sender: Any) {
        if LocalizationSystem.sharedInstance.getLanguage() == "ar" {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        } else {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }
        //viewDidLoad()
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpView") as! SignUpVC
        
        let sceneDelegate = UIApplication.shared.connectedScenes
            .first!.delegate as! SceneDelegate
        sceneDelegate.window!.rootViewController = vc
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // -- End
    
    
    
    // -- For Editing in Views  --
    // -- Start
    @IBAction func borderSize(_ sender: UIView) {
        sender.layer.borderWidth = 2
        sender.layer.masksToBounds = false
        sender.layer.borderColor = UIColor.white.cgColor
        //sender.layer.borderColor = UIColor.init(white: CGFloat.init(1.0), alpha: CGFloat.init(1.0))
        
        let opacity:CGFloat = 0.6
        let borderColor = UIColor.white
        sender.layer.borderColor = borderColor.withAlphaComponent(opacity).cgColor
        
        sender.layer.cornerRadius = sender.frame.height/2
        sender.clipsToBounds = true
    }
    // -- End
}
