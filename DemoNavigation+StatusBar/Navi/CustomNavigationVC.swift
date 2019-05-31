//
//  CustomNavigationVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class CustomNavigationVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        customBackButton()
        customBar()
    }

    private func customBackButton() {
        let backIcon = UIImage(named: "back_icon")
        navigationBar.backIndicatorImage = backIcon
        navigationBar.backIndicatorTransitionMaskImage = backIcon
        delegate = self
    }
    
    private func customBar() {
        let titleDict = [NSAttributedString.Key.foregroundColor: UIColor.orange,
                         NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)]
        navigationBar.titleTextAttributes = titleDict
        navigationBar.backgroundColor = .gray
    }
    
}

extension CustomNavigationVC: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let currentVC = topViewController {
            let itemBack = UIBarButtonItem(title: "Quay lại", style: .done, target: currentVC, action: nil)
            currentVC.navigationItem.backBarButtonItem = itemBack
        }
    }
}
