//
//  GreenVC.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class GreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToRed(_ sender: Any) {
        let redVC = Utils.instantiate(RedVC.self)
        navigationController?.pushViewController(redVC, animated: true)
    }
    
}
