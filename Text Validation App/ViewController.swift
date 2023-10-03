//
//  ViewController.swift
//  Text Validation App
//
//  Created by Jacob Davis on 10/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
//    var users: [User] = [User(username: "somecatlover@somecompanyname.com", password: "B00mer&Rac00n!"),
//    User(username: "someweirdo@somecompanyname.com", password: "Il0vet0r3ad!")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonPressed(_ sender: Any) {
        validatePassword()
    }
    
    func validatePassword() {
        guard let password = passwordTextField.text else {return}

        if password.count < 8 {
            errorMessageLabel.textColor = UIColor.red
            errorMessageLabel.text = "The password is not long enough."
        } else if !password.contains(where: {",.!@#$%^&*<>?+=-".contains($0) }) {
            errorMessageLabel.textColor = UIColor.red
            errorMessageLabel.text = "Password must contain a special character."
        } else {
            errorMessageLabel.textColor = UIColor.green
            errorMessageLabel.text = "Login Successful!"
        }
    }
    
    
}

