//
//  UIColor+LSStudyExtension.swift
//  lsStudySwift
//
//  Created by 李硕 on 2019/5/9.
//  Copyright © 2019 LSPO. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    // 返回随机颜色
    class var randomColor: UIColor {
        get{
            let red = CGFloat(arc4random()%256)/255.0
            let greeen = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: greeen, blue: blue, alpha: 1.0)
        }
    }
}
