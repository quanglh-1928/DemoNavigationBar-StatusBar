//
//  CustomNaviBarVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class CustomNaviBarVC: UIViewController {
    
    @IBOutlet weak var hideShowNaviBarButton: UIButton!
    @IBOutlet weak var pushButton: UIButton!
    
    let colors: [UIColor] = [.darkGray, .red, .blue, .black, .brown, .white]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customRightButton()
        customLeftButton()
        title = "Screen"
    }

    private func customRightButton() {
        let bgButton = UIBarButtonItem(image: UIImage(named: "fb_icon")?.withRenderingMode(.alwaysOriginal),
                                       style: .plain,
                                       target: self,
                                       action: #selector(changeBackgroundColor))
        let colorButton = UIBarButtonItem(image: UIImage(named: "ins_icon")?.withRenderingMode(.alwaysOriginal),
                                          style: .plain,
                                          target: self,
                                          action: #selector(changeButtonColor))
        navigationItem.rightBarButtonItems = [bgButton, colorButton]
    }
    
    private func customLeftButton() {
        let backButton = UIBarButtonItem(image: UIImage(named: "close_icon")?.withRenderingMode(.alwaysOriginal),
                                         style: .plain,
                                         target: self,
                                         action: #selector(close))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func changeBackgroundColor() {
        if let color = colors.randomElement() {
            self.view.backgroundColor = color
        }
    }
    
    @objc func changeButtonColor() {
        if let color = colors.randomElement() {
            hideShowNaviBarButton.tintColor = color
            pushButton.tintColor = color
        }
    }
    
    @objc func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func hideShowNaviBar(_ sender: Any) {
        navigationController?.setNavigationBarHidden(!(navigationController?.navigationBar.isHidden ?? false), animated: true)
    }
    
    @IBAction func pushAction(_ sender: Any) {
        navigationController?.pushViewController(Utils.instantiate(NextNaviBarVC.self), animated: true)
    }
}
