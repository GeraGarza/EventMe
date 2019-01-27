//
//  WelcomeViewControllers.swift
//  EventMe
//
//  Created by Gera Garza on 1/26/19.
//  Copyright © 2019 Gera Garza. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class WelcomeViewControllers: UIViewController {
    
override func viewDidLoad() {
    super.viewDidLoad()
    
    //If there is a logged in user, by pass this screen and go straight to ChatViewController
    
    if Auth.auth().currentUser != nil {
        performSegue(withIdentifier: "goToCart", sender: self)
    }
    
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

}
