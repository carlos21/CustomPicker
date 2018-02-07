//
//  Constants.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/7/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(red: Float, green: Float, blue: Float) {
        let newRed: CGFloat = CGFloat(red/255.0)
        let newGreen: CGFloat = CGFloat(green/255.0)
        let newBlue: CGFloat = CGFloat(blue/255.0)
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
    
}

struct Color {
    
    static let redSBColor = UIColor(red: 237, green: 7, blue: 40)
    static let purpleSBColor = UIColor(red: 68, green: 44, blue: 209)
    static let darkGraySBColor = UIColor(red: 74, green: 74, blue: 74)
    static let lightGraySBColor = UIColor(red: 151, green: 151, blue: 151)
    static let lightGray2SBColor = UIColor(red: 155, green: 155, blue: 155)
    static let lightGray3SBColor = UIColor(red: 188, green: 188, blue: 188)
    static let lightGray4SBColor = UIColor(red: 231, green: 231, blue: 231)
    static let lightGray5SBColor = UIColor(red: 246, green: 246, blue: 246)
    static let lightGray6SBColor = UIColor(red: 216, green: 216, blue: 216)
    static let lightGray7SBColor = UIColor(red: 117, green: 117, blue: 117)
    static let lightGray8SBColor = UIColor(red: 240, green: 240, blue: 240)
    static let lightGray9SBColor = UIColor(red: 214, green: 214, blue: 214)
    static let blackSBColor = UIColor(red: 51, green: 51, blue: 51)
    static let greenSBColor = UIColor(red: 0, green: 160, blue: 116)
    
    public static let chartColorT = UIColor(hexString: "#005239").withAlphaComponent(0.75)
    public static let chartColorP = UIColor(hexString: "#169FE3").withAlphaComponent(0.75)
    public static let chartColorR = UIColor(hexString: "#ED0728").withAlphaComponent(0.75)
    public static let chartColorC = UIColor(hexString: "#442CD1").withAlphaComponent(0.75)
    public static let chartColorO = UIColor(hexString: "#A6A6A6").withAlphaComponent(0.75)
    public static let chartColorE = UIColor(hexString: "#00A86E").withAlphaComponent(0.75)
    public static let chartColorV = UIColor(hexString: "#A01603").withAlphaComponent(0.75)
    
    public static let movementColorNegative = Color.blackSBColor
    public static let movementColorPositive = UIColor(hexString: "#00A86E")
    
    public static let accountDetailPurple = UIColor(red: 40, green: 27, blue: 126)
    
}
