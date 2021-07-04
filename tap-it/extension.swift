//
//  extension.swift
//  tap-it
//
//  Created by Aamir Burma on 03/07/21.
//

import Foundation
import UIKit

extension UIView{
    public var width : CGFloat { return frame.size.width }
    public var height : CGFloat {return frame.size.height }
    public var top : CGFloat { return frame.origin.y }
    public var bottom :CGFloat { return frame.origin.y + frame.size.height }
    public var left :CGFloat { return frame.origin.x }
    public var right : CGFloat { return frame.origin.x + frame.size.width }
}
func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
