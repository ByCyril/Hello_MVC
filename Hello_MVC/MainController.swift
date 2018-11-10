//
//  MainController.swift
//  Hello_MVC
//
//  Created by Cyril Garcia on 10/15/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    var register: Register!
    var registerView: RegisterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerView = RegisterView(frame: self.view.frame)
        self.registerView.doneButtonAddTarget(self, action: #selector(MainController.registerAction), for: .touchUpInside)
        self.view.addSubview(self.registerView)
        
    }
    
    @objc func registerAction() {
        let username = self.registerView.getTexts().username!
        let password = self.registerView.getTexts().password!
        let confirmPassword = self.registerView.getTexts().confirmPassword!
        
        self.register = Register(username, password, confirmPassword)
        
        self.register.completeRegistration { (message) in
            print(message)
        }
    }
    
    
}
