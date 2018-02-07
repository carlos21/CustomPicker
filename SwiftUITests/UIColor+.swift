//
//  UIColor+.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/7/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(hexString: String) {
        let hexint = Int(UIColor.intFromHexString(hexStr: hexString))
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        // Create color object, specifying alpha as well
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    static func intFromHexString(hexStr: String) -> UInt32 {
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexStr)
        // Tell scanner to skip the # character
        scanner.charactersToBeSkipped = NSCharacterSet(charactersIn: "#") as CharacterSet
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        return hexInt
    }
    
}
