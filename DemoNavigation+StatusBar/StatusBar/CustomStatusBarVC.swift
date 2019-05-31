//
//  CustomStatusBarVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class CustomStatusBarVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIApplication.shared.statusBarFrame.size.height)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
