//
//  SecondController.swift
//  Counter
//
//  Created by ИИТ on 06.03.2021.
//

import UIKit

class SecondViewController: UIViewController {
    private var loginIndexField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Your login"
        return textField
    }()
    private var passwordIndexField:UITextField = {
        let textField = UITextField()
        textField .isSecureTextEntry = true
        textField.tag = 10
        textField.placeholder = "Your password"
        return textField
    }()
    private var authButton = UIButton()
    private var login:String? = ""
    private var password:String? = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        loginIndexField.delegate = self
        passwordIndexField.delegate = self
        authButton.addTarget(self, action: #selector(authAction), for: .touchUpInside)
    }
    @objc func authAction(){
        let alert = UIAlertController(title: "Safe", message: "Thanks for you data", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: alert.dismiss(animated: true, completion: nil)))
    }
}
extension SecondViewController: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        view.endEditing(true)
        if textField.tag == 9{
            login = textField.text
        }
        if textField.tag == 10{
            password = textField.text
        }
    }
}
