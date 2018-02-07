//
//  ImageView+.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/7/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    public func applyTintColor(color: UIColor) {
        if self.image != nil {
            self.image = self.image?.withRenderingMode(.alwaysTemplate)
            self.tintColor = color
        }
    }
    
}
