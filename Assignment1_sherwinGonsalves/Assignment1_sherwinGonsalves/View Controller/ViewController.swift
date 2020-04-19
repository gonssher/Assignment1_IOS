//
//  ViewController.swift
//  Assignment1_sherwinGonsalves
//
//  Created by Sherwin on 2020-01-27.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin


class ViewController: UIViewController {

    @IBOutlet var label :UIButton!
    
    let Fbbutton : FBLoginButton = {
        
       let button = FBLoginButton()
        button.permissions = ["email"]
        return button
        
        
    }()
 
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        view.addSubview(Fbbutton)
        Fbbutton.center = view.center
       
        // Do any additional setup after loading the view.
    }

    

}

