//
//  Register.swift
//  Hello_MVC
//
//  Created by Cyril Garcia on 10/15/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class Register {
    
    private var username: String!
    private var password: String!
    private var confirmPassword: String!
    
    enum Validation: Error {
        case passwordTooShort
        case passwordDontMatch
    }
    
    init(_ username: String, _ password: String, _ confirmPassword: String) {
        self.username = username
        self.password = password
        self.confirmPassword = confirmPassword
    }
    
    private func validatePasswordLength() throws {
        if self.password.count < 5 {
            throw Validation.passwordTooShort
        }
    }
    
    private func validatePasswordEquality() throws {
        if self.password != self.confirmPassword {
            throw Validation.passwordDontMatch
        }
    }
    
    public func completeRegistration(completion: (_ success: String) -> Void) {
        
        do {
            try self.validatePasswordEquality()
            try self.validatePasswordLength()
            completion("Register Complete!")
        } catch Validation.passwordDontMatch {
            print("Passwords don't match")
        } catch Validation.passwordTooShort {
            print("Password must be minimum of 6 characters")
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    
}
