//
//  ToolBarVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class ToolBarVC: UIViewController {
    
    let colors: [UIColor] = [.darkGray, .red, .blue, .black, .brown, .white]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupToolbar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setToolbarHidden(false, animated: true)
    }
    
    private func setupToolbar() {
        navigationController?.toolbar.barStyle = .default
        let bgButton = UIBarButtonItem(image: UIImage(named: "fb_icon")?.withRenderingMode(.alwaysOriginal),
                                       style: .plain,
                                       target: self,
                                       action: #selector(changeBackgroundColor))
        let colorButton = UIBarButtonItem(image: UIImage(named: "ins_icon")?.withRenderingMode(.alwaysOriginal),
                                          style: .plain,
                                          target: self,
                                          action: #selector(changeBackgroundColor))
        toolbarItems = [bgButton, colorButton]
    }

    @objc func changeBackgroundColor() {
        if let color = colors.randomElement() {
            self.view.backgroundColor = color
        }
    }
    
}
