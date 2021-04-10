//
//  SignInVC.swift
//  Koraa
//
//  Created by Yasser AlShaFei on 2/15/21.
//

import UIKit
import Firebase
import FirebaseAuth



class SignInVC: ViewController {

    @IBOutlet weak var numberPhone: UITextField!
    @IBOutlet weak var viewBtn: UIView!
    var currentVerificationId = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lineUnderTF(numberPhone)
        numberPhone.attributedPlaceholder = NSAttributedString(string: "رقم الجوال 966+",
                                                               attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        /*
        // Test Send Notification code
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Body"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "testIdentfier", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        
        // Test Send verification code
        let verificationCode = "123456"
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: currentVerificationId, verificationCode: verificationCode)

        Auth.auth().signIn(with: credential) { (authResult, error) in
          if let error = error {
            let authError = error as NSError
            print(authError.description)
            return
          }

          // User has signed in successfully and currentUser object is valid
          let currentUserInstance = Auth.auth().currentUser
        }
        
        
        // Test Send verification code
        let phoneNumber = "+16505554567"

        let testVerificationCode = "123456"

        Auth.auth().settings?.isAppVerificationDisabledForTesting = true
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate:nil) {
                                                                    verificationID,error in
            if ((error) != nil) {
              // Handles error
              self.handleError(error)
              return
            }
            let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID ?? "",
                                                                       verificationCode: testVerificationCode)
            Auth.auth().signInAndRetrieveData(with: credential) { authData, error in
              if (error) {
                // Handles error
                self.handleError(error)
                return
              }
              _user = authData.user
            }];
        }];*/
    }
    
    
    
    
    // -- For Request Activate Number Phone in Firebase  --
    // -- Start
    @IBAction func requestActivateNumberPhone(_ sender: Any) {
        PhoneAuthProvider.provider().verifyPhoneNumber("phoneNumber", uiDelegate: nil) { (verificationID, error) in
            
            Auth.auth().languageCode = "en"
            let phoneNumber = "+852 2222 2222"
            PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { (verificationID, error) in
                  if let error = error {
                    print(error.localizedDescription)
                    return
                  }
                self.currentVerificationId = verificationID!
            }
        }
    }
    // -- End
    
   
    // -- For Editing in Views  --
    // -- Start
    @IBAction func lineUnderTF(_ sender: UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: sender.frame.height - 2, width: sender.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        sender.borderStyle = .none
        sender.layer.addSublayer(bottomLine)
    }
    // -- End

}
