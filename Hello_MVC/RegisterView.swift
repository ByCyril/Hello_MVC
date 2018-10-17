//
//  RegisterView.swift
//  Hello_MVC
//
//  Created by Cyril Garcia on 10/15/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class RegisterView: UIView {
    
    private var usernameField: UITextField!
    private var passwordField: UITextField!
    private var confirmPasswordField: UITextField!
    
    private var doneButton: UIButton!
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.viewSetup()
        self.addToScene()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func viewSetup() {
        self.usernameField = {
            let textfield = UITextField()
            textfield.frame.size = CGSize(width: self.frame.size.width - 50, height: 50)
            textfield.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height * 0.25)
            textfield.backgroundColor = UIColor.white
            textfield.textColor = UIColor.black
            textfield.placeholder = "Username"
            return textfield
        }()
        
        self.passwordField = {
            let textfield = UITextField()
            textfield.frame.size = CGSize(width: self.frame.size.width - 50, height: 50)
            textfield.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height * 0.35)
            textfield.backgroundColor = UIColor.white
            textfield.textColor = UIColor.black
            textfield.placeholder = "Password"
            textfield.isSecureTextEntry = true
            return textfield
        }()
        
        self.confirmPasswordField = {
            let textfield = UITextField()
            textfield.frame.size = CGSize(width: self.frame.size.width - 50, height: 50)
            textfield.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height * 0.45)
            textfield.backgroundColor = UIColor.white
            textfield.textColor = UIColor.black
            textfield.placeholder = "Confirm Password"
            textfield.isSecureTextEntry = true
            return textfield
        }()
        
        self.doneButton = {
            let button = UIButton()
            button.frame.size = CGSize(width: 120, height: 50)
            button.center = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height * 0.55)
            button.setTitle("Done", for: .normal)
            button.setTitleColor(UIColor.blue, for: .normal)
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.blue.cgColor
            return button
        }()
        
        
    }
    
    private func addToScene() {
        self.addSubview(self.usernameField)
        self.addSubview(self.passwordField)
        self.addSubview(self.confirmPasswordField)
        self.addSubview(self.doneButton)
    }
    
    public func getTexts() -> (username: String?, password: String?, confirmPassword: String?) {
        return (self.usernameField.text, self.passwordField.text, self.confirmPasswordField.text)
    }
    
    public func doneButtonAddTarget(_ vc: UIViewController, action: Selector, for event: UIControl.Event) {
        
        self.doneButton.addTarget(vc, action: action, for: event)
        

    }
    
   
    
}
