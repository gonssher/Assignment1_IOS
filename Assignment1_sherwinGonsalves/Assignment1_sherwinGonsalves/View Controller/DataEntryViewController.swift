//
//  DataEntryViewController.swift
//  Assignment1_sherwinGonsalves
//
//  Created by Sherwin on 2020-03-25.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class DataEntryViewController: UIViewController {
    
    
@IBOutlet var myImages: [UIButton]!
@IBOutlet var loadImages : UIImageView!
    @IBOutlet var userPickedOption : UILabel!
    
    
    @IBOutlet weak var tfcourse: UITextField!
    
    @IBOutlet weak var tfemail: UITextField!
    
    @IBOutlet weak var tfname: UITextField!
    
    @IBAction func saveData(_ sender: UIButton) {
        let user : User = User(row: 0, name:tfname.text!, email:tfemail.text!,course: tfcourse.text!, image: userPickedOption.text!)
        
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        
            let returnCode = mainDelegate.signUp(user: user)
            
            var returnMsg : String = "Person Has Been Added Successfully"
            
            
            if returnCode == false
            {
                returnMsg = "Person Add Failed"
            }
        
            
            let alertController = UIAlertController(title: "SQl Lite Add", message: returnMsg, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "ok", style: .default)  { (_)-> Void in   self.performSegue(withIdentifier: "saveSegue", sender: self) }
        alertController.addAction(cancelAction)
        present(alertController,animated: true)


        
        
    }
    @IBAction func pickedCar(_ sender: UIButton) {
 loadImages.image = UIImage(named: "car.png")
    userPickedOption.text = "Image Chosen is car"
    }
    
@IBAction func pickedPlane(_ sender: UIButton) {
         loadImages.image = UIImage(named: "aircraft.jpg")
    userPickedOption.text = "Image Chosen is Plane"
    
    }
    
@IBAction func pickedBus(_ sender: UIButton) {
         loadImages.image = UIImage(named: "bus.png")
    userPickedOption.text = "Image Chosen is Bus"
    
    }

    
@IBAction func selectMyIamges(_ sender: UIButton) {
        
        myImages.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {Button.isHidden = !Button.isHidden})
            self.view.layoutIfNeeded()
            userPickedOption.isHidden = false
        }

        
    }
    
    
   
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       userPickedOption.reloadInputViews()

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
