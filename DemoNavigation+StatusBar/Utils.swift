//
//  Utils.swift
//  DemoNavigation+StatusBar
//
//  Created by ly.hoang.quang on 5/31/19.
//  Copyright © 2019 ly.hoang.quang. All rights reserved.
//

import Foundation
import UIKit

class Utils {
    
    class func instantiate<T: UIViewController>(_: T.Type) -> T where T: Any {
        var storyboard: UIStoryboard!
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: NSStringFromClass(T.self).components(separatedBy: ".").last!) as! T
    }
    
}
