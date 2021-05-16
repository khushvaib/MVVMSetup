//
//  LoginViewModel.swift
//  MVVMSetup
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import Foundation
import UIKit

struct BrokenRules{
    var message: String
    var title: String
}

class LoginViewModel{
    
    init() {
        
    }
    var brokenRules = [BrokenRules]()
    var email:Box<String> = Box("")
    var password: Box<String> = Box("")
    var isValid: Bool{
        get{
            self.brokenRules = [BrokenRules]()
            self.validate()
            return brokenRules.count == 0 ? true : false
        }
    }
    
    func validate(){
        if email.value == ""{
            brokenRules.append(BrokenRules(message: "email field cannot be empty", title: kAppName ?? ""))
        }else if password.value == ""{
            brokenRules.append(BrokenRules(message: "password field cannot be empty", title: kAppName ?? ""))
        }else if email.value != UserCredentials.email.rawValue{
            brokenRules.append(BrokenRules(message: "either emial or password are wrong", title: kAppName ?? ""))
        }else if password.value != UserCredentials.password.rawValue{
            brokenRules.append(BrokenRules(message: "either emial or password are wrong", title: kAppName ?? ""))
        }
    }
    
}

enum UserCredentials: String {
    case email = "vaibhav@sh.com"
    case password = "vaibhav"
}
