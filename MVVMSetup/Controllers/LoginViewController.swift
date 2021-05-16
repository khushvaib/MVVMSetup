//
//  LoginViewController.swift
//  MVVMSetup
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    var viewModel = LoginViewModel()
    @IBOutlet weak var txtEmail: BindingTextField?{
        didSet{
            self.txtEmail?.bind { self.viewModel.email.value = $0 }
        }
    }
    
    @IBOutlet weak var txtPassword: BindingTextField!{
        didSet{
            self.txtPassword.bind{
                self.viewModel.password.value = $0  }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginOrSignup(_ sender: UIButton){
        if viewModel.isValid{
            print("Login signup success")
            self.changeStoryboard(storyboard: "Main", storyboardId: "homeView")
        }else{
            print(viewModel.brokenRules)
        }
    }

}


