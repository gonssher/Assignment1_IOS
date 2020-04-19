//
//  AboutViewController.swift
//  Assignment1_sherwinGonsalves
//
//  Created by Sherwin on 2020-01-27.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet var lbl : UILabel!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Sherwin Gonsalves curently enrolled in systems analyst program at sheridan college this my first iœåos app that i have created as an assignment .Please Enjoy it . I am from Goa and love everything in Canada.I have grown up in kuwait and now pursuing my education at sheridan college Student Number : 991489757"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
