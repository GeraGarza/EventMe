//
//  LoginViewController.swift
//  EventMe
//
//  Created by Gera Garza on 1/26/19.
//  Copyright © 2019 Gera Garza. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import SVProgressHUD

class LoginViewController: UIViewController {
      //Pre-linked IBOutlets
    
    
    //Textfields pre-linked with IBOutlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //Log in an existing user
    
    @IBAction func LogInPressed(_ sender: UIButton) {
 
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                print("Log in successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
            }
            
        }
        
    }
    
    
    
    
}

