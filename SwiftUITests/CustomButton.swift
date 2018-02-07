//
//  CustomButton.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/7/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

final class ButtonContinue: UIButton {
    
    private let cornerRadius: CGFloat =  5.0
    private let arrowImage: UIImageView = UIImageView.init(image: #imageLiteral(resourceName: "angleRight2"))
    
    @IBInspectable
    public var withArrow: Bool = true {
        didSet {
            if arrowImage.superview != nil {
                arrowImage.removeFromSuperview()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
    }
    
    func drawViewsForRect(_ rect: CGRect) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = Color.purpleSBColor.cgColor
        self.layer.borderWidth = 2
        self.backgroundColor = UIColor.clear
        self.setTitleColor(Color.purpleSBColor, for: UIControlState.normal)
        
        if withArrow && arrowImage.superview == nil {
            self.addSubview(arrowImage)
            arrowImage.snp.makeConstraints { make in
                make.centerY.equalToSuperview().offset(0)
                make.right.equalToSuperview().inset(15.0)
                make.size.equalTo(CGSize(width: 12.0, height: 12.0))
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        drawViewsForRect(rect)
    }
    
    override func prepareForInterfaceBuilder() {
        drawViewsForRect(frame)
    }
}

//@IBDesignable
final class ButtonConfirmation: UIButton {
    let cornerRadius: CGFloat =  5.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = cornerRadius
        self.layer.backgroundColor = Color.purpleSBColor.cgColor
        self.setTitleColor(UIColor.white, for: .normal)
    }
}

//@IBDesignable
final class ButtonPayment: UIButton {
    let cornerRadius: CGFloat =  5.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 1
        self.layer.backgroundColor = UIColor.white.cgColor
        
        if self.titleLabel != nil {
            // FIXME
//            self.titleLabel!.font = Font.sbpFontContentBold1
        }
        
        var mainColor = Color.purpleSBColor
        if !self.isEnabled {
            mainColor = UIColor(hexString: "#d0d0d0")
        }
        self.layer.borderColor = mainColor.cgColor
        self.setTitleColor(mainColor, for: .normal)
    }
}

//@IBDesignable
final class ButtonTinted: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        self.draw(self.frame)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if let imageView = self.imageView {
            imageView.applyTintColor(color: Color.purpleSBColor)
        }
    }
}

//@IBDesignable
class ButtonBack: UIButton {
    let cornerRadius: CGFloat =  5.0
    let arrowImage: UIImageView = UIImageView.init(image: #imageLiteral(resourceName: "angleLeft2"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.backgroundColor = UIColor.clear.cgColor
        self.setTitleColor(Color.lightGraySBColor, for: .normal)
        if self.titleLabel != nil {
            // FIXME
//            self.titleLabel!.font = Font.sbpFontContentBold1
        }
        if arrowImage.superview == nil {
            self.addSubview(arrowImage)
            let titleRect = self.titleRect(forContentRect: rect)
            let leftInsetValue = (frame.size.width-titleRect.size.width)/2 - 16.0
            arrowImage.snp.makeConstraints { make in
                make.centerY.equalToSuperview().offset(0)
                make.left.equalToSuperview().inset(leftInsetValue)
                make.size.equalTo(CGSize(width: 12.0, height: 12.0))
            }
        }
    }
}

@IBDesignable
class ButtonPicker: UIButton {
    let width: CGFloat =  1.0
    let arrowImage: UIImageView = UIImageView(image: #imageLiteral(resourceName: "angleDown"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
        self.setTitleColor(Color.darkGraySBColor, for: .normal)
        self.setTitleColor(Color.darkGraySBColor, for: .highlighted)
        // FIXME
//        self.titleLabel?.font = Font.sbpFontContent1
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
        self.setTitleColor(Color.darkGraySBColor, for: .normal)
        self.setTitleColor(Color.darkGraySBColor, for: .highlighted)
        // FIXME
//        self.titleLabel?.font = Font.sbpFontContent1
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 20)
        self.contentVerticalAlignment = .center
        self.contentHorizontalAlignment = .left
        
        if arrowImage.superview == nil {
            self.addSubview(arrowImage)
            arrowImage.snp.makeConstraints { make in
                make.centerY.equalToSuperview().offset(0)
                make.right.equalToSuperview().offset(0)
                make.size.equalTo(CGSize(width: 16.0, height: 16.0))
            }
        }
        
        let border = CALayer()
        border.borderColor = Color.lightGray3SBColor.cgColor
        border.frame = CGRect(x: 0, y: rect.height - width, width:  rect.width, height: rect.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
    }
}

//@IBDesignable
class ButtonInfo: UIButton {
    
    let cornerRadius: CGFloat =  5.0
    let infoImage: UIImageView = UIImageView.init(image: #imageLiteral(resourceName: "iconInfo"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.backgroundColor = UIColor.clear.cgColor
        if infoImage.superview == nil {
            self.addSubview(infoImage)
            infoImage.snp.makeConstraints({ (maker) in
                maker.centerX.equalToSuperview()
                maker.top.equalToSuperview().offset(5)
                maker.width.equalTo(16)
                maker.height.equalTo(16)
            })
        }
    }
}
