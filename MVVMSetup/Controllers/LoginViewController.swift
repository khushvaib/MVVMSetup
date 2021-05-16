//
//  LoginViewController.swift
//  MVVMSetup
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewTitle(value: "Login/Register")
        
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

extension UIViewController{
    func viewTitle(value title: String){
        self.navigationItem.title = title
    }
}
