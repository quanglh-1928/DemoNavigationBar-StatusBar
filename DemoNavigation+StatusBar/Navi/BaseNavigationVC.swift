//
//  BaseNavigationVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class BaseNavigationVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }

}

extension BaseNavigationVC: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        viewControllers.forEach {
            print(String(describing: $0.self))
        }
        print("---------------")
    }
}
