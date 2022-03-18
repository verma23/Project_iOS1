//
//  LoginViewController.swift
//  Project_iOS
//
//  Created by Shivanshu Verma on 2022-03-11.
//

import UIKit
import SQLite3
import Firebase
import FirebaseAuth


class LoginViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet var tEmailAddress: UITextField!
    
    @IBOutlet var Pass: UITextField!
    
    @IBAction func LoginUser(_ sender: Any) {
        let emailAdd = tEmailAddress.text;
        let verifyPass = Pass.text!
        if( (emailAdd?.isEmpty) == true){
            
            displayMyAlerMessage(userMessage: "Please Enter Email Address")
        }
            else if ((verifyPass.isEmpty) == true)
            {
            
           displayMyAlerMessage(userMessage: "Please Enter Password")
            }
        else
        {
            let person = Data.init()
            let mainDelegate = UIApplication.shared.delegate as! AppDelegate
            if((emailAdd) == person.confirmPass){
                displayMyAlerMessage(userMessage: "AB")
                
            }
            
            }
            
            
        }
    
    func displayMyAlerMessage(userMessage : String)
    {
        var myAlert = UIAlertController(title: "Attention", message: userMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        myAlert.addAction(okAction)
        present(myAlert, animated: true)
    
    }
    
    func 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
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
