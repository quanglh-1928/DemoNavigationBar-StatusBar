//
//  YellowVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addBlueToStack(_ sender: Any) {
        let blueVC = Utils.instantiate(BlueVC.self)
        navigationController?.viewControllers.insert(blueVC, at: 3)
    }
    
    @IBAction func backToRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
