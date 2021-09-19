//
//  LoginVCViewController.swift
//  Assignment
//
//  Created by Abinash Padhi on 18/09/21.
//

import UIKit



class LoginVC: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnSignin: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtUsername {
            txtPassword.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func btnSigninAction(sender: UIButton) {
        
        guard let username = txtUsername.text, !username.isEmpty, let password = txtPassword.text, !password.isEmpty  else {
            return
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "list")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
