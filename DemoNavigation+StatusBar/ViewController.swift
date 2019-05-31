//
//  ViewController.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellNames = [
        "Stack View Controllers",
        "Custom Navigation Bar",
        "Navigation Tool Bar",
        "Change Status Bar Style"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cellNames[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let greenVC = Utils.instantiate(GreenVC.self)
            navigationController?.pushViewController(greenVC, animated: true)
        case 1:
            let navibarVC = Utils.instantiate(CustomNaviBarVC.self)
            let navi = CustomNavigationVC(rootViewController: navibarVC)
            present(navi, animated: true, completion: nil)
        case 2:
            let toolbarVC = Utils.instantiate(ToolBarVC.self)
            navigationController?.pushViewController(toolbarVC, animated: true)
        case 3:
            let statusBarVC = Utils.instantiate(CustomStatusBarVC.self)
            navigationController?.pushViewController(statusBarVC, animated: true)
        default:
            break
        }
    }
}
