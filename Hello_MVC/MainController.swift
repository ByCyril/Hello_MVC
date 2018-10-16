//
//  MainController.swift
//  Hello_MVC
//
//  Created by Cyril Garcia on 10/15/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    var registerView: RegisterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerView = RegisterView(frame: self.view.frame)
        self.view.addSubview(self.registerView)
        
    }
    
    
}
