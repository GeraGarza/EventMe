//
//  CartsViewController.swift
//  EventMe
//
//  Created by Gera Garza on 1/26/19.
//  Copyright © 2019 Gera Garza. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import SVProgressHUD


class CartsViewController: UIViewController {
    
    @IBAction func LogOutButton(_ sender: UIBarButtonItem) {
   
            do {
                try Auth.auth().signOut()
                
                navigationController?.popToRootViewController(animated: true)
                
            }
            catch {
                print("error: there was a problem logging out")
            }
            
        
    }
    
}
