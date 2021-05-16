//
//  Extension.swift
//  MVVMSetup
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import Foundation
import UIKit

extension UIViewController{
    func viewTitle(value title: String){
        self.navigationItem.title = title
    }
}

extension UIViewController{
    func changeStoryboard(storyboard name: String, storyboardId id: String){
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let nextView = storyboard.instantiateViewController(withIdentifier: id)
        UIView.transition(with: kSceneDelegate.window!, duration:0.8, options: .transitionFlipFromLeft, animations: {
            kSceneDelegate.window?.rootViewController = UINavigationController(rootViewController: nextView)
        }, completion: nil)
        
//        self.show(nextView, sender: self)
    }
}
