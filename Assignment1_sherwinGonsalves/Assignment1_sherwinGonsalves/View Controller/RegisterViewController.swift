//
//  RegisterViewController.swift
//  Assignment1_sherwinGonsalves
//
//  Created by Sherwin on 2020-01-27.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet var slVol : UISlider!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var lbVol : UILabel!
    @IBOutlet var birthDatePicker : UIDatePicker!
    @IBOutlet  var nameFiels: UITextField!
    @IBOutlet  var emailField: UITextField!
    @IBOutlet var number: UITextField!
    @IBOutlet var genderSwitch : UISwitch!
    @IBOutlet var labelChangeGender : UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField)-> Bool {
        
        return textField.resignFirstResponder()
        
    }
    
    func updateLabel()
    {
        
        let newage: Int = Int(slVol.value)
        lbVol.text = String(format : "%d",newage)
        
    }
    
    @IBAction func sliderValueChanged(_ sender : UISlider)
    {
        
        updateLabel()
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch)
    {
        let gender : String
        if(genderSwitch.isOn == false)
        {
                gender = "Male"
            
        }
        else
        {
            gender = "Female"
            
        }
        
        labelChangeGender.text = gender
        
        
    }
    
    @IBAction func Submit(sender: UIButton)
    {
       
        let ThanksMessage = "Thank You,\(nameFiels.text!), for your time "
        let finalmessage = " Your Email :\(emailField.text!) and Name both have successfully been registered."
    
        let alertController = UIAlertController(title: ThanksMessage, message: finalmessage, preferredStyle: .alert);
        
        
        let acceptAction = UIAlertAction(title: "ok", style: .default) { (_) -> Void in
            
            self.performSegue(withIdentifier: "somesegue", sender: self)}
        
            alertController.addAction(acceptAction)
            present(alertController, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
