////
//// This is a generated file, do not edit!
//// Generated by R.swift, see https://github.com/mac-cain13/R.swift
////
//
//import Foundation
//import Rswift
//import UIKit
//
///// This `R` struct is generated and contains references to static resources.
//struct R: Rswift.Validatable {
//  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
//  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
//  
//  static func validate() throws {
//    try font.validate()
//    try intern.validate()
//  }
//  
//  /// This `R.color` struct is generated, and contains static references to 0 colors.
//  struct color {
//    fileprivate init() {}
//  }
//  
//  /// This `R.file` struct is generated, and contains static references to 19 files.
//  struct file {
//    /// Resource file `FrutigerLTPro-Black.ttf`.
//    static let frutigerLTProBlackTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-Black", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-BlackCn.ttf`.
//    static let frutigerLTProBlackCnTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-BlackCn", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-BlackCnIta.ttf`.
//    static let frutigerLTProBlackCnItaTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-BlackCnIta", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-BlackItalic.ttf`.
//    static let frutigerLTProBlackItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-BlackItalic", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-Bold.ttf`.
//    static let frutigerLTProBoldTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-Bold", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-BoldCn.ttf`.
//    static let frutigerLTProBoldCnTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-BoldCn", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-BoldCnIta.ttf`.
//    static let frutigerLTProBoldCnItaTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-BoldCnIta", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-BoldItalic.ttf`.
//    static let frutigerLTProBoldItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-BoldItalic", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-Condensed.ttf`.
//    static let frutigerLTProCondensedTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-Condensed", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-CondensedIta.ttf`.
//    static let frutigerLTProCondensedItaTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-CondensedIta", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-ExtraBlackCn.ttf`.
//    static let frutigerLTProExtraBlackCnTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-ExtraBlackCn", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-ExtraBlkCnIta.ttf`.
//    static let frutigerLTProExtraBlkCnItaTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-ExtraBlkCnIta", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-Italic.ttf`.
//    static let frutigerLTProItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-Italic", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-Light.ttf`.
//    static let frutigerLTProLightTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-Light", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-LightCn.ttf`.
//    static let frutigerLTProLightCnTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-LightCn", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-LightCnIta.ttf`.
//    static let frutigerLTProLightCnItaTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-LightCnIta", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-LightItalic.ttf`.
//    static let frutigerLTProLightItalicTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-LightItalic", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-Roman.ttf`.
//    static let frutigerLTProRomanTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-Roman", pathExtension: "ttf")
//    /// Resource file `FrutigerLTPro-UltraBlack.ttf`.
//    static let frutigerLTProUltraBlackTtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FrutigerLTPro-UltraBlack", pathExtension: "ttf")
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-Black", withExtension: "ttf")`
//    static func frutigerLTProBlackTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBlackTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-BlackCn", withExtension: "ttf")`
//    static func frutigerLTProBlackCnTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBlackCnTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-BlackCnIta", withExtension: "ttf")`
//    static func frutigerLTProBlackCnItaTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBlackCnItaTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-BlackItalic", withExtension: "ttf")`
//    static func frutigerLTProBlackItalicTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBlackItalicTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-Bold", withExtension: "ttf")`
//    static func frutigerLTProBoldTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBoldTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-BoldCn", withExtension: "ttf")`
//    static func frutigerLTProBoldCnTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBoldCnTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-BoldCnIta", withExtension: "ttf")`
//    static func frutigerLTProBoldCnItaTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBoldCnItaTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-BoldItalic", withExtension: "ttf")`
//    static func frutigerLTProBoldItalicTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProBoldItalicTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-Condensed", withExtension: "ttf")`
//    static func frutigerLTProCondensedTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProCondensedTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-CondensedIta", withExtension: "ttf")`
//    static func frutigerLTProCondensedItaTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProCondensedItaTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-ExtraBlackCn", withExtension: "ttf")`
//    static func frutigerLTProExtraBlackCnTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProExtraBlackCnTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-ExtraBlkCnIta", withExtension: "ttf")`
//    static func frutigerLTProExtraBlkCnItaTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProExtraBlkCnItaTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-Italic", withExtension: "ttf")`
//    static func frutigerLTProItalicTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProItalicTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-Light", withExtension: "ttf")`
//    static func frutigerLTProLightTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProLightTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-LightCn", withExtension: "ttf")`
//    static func frutigerLTProLightCnTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProLightCnTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-LightCnIta", withExtension: "ttf")`
//    static func frutigerLTProLightCnItaTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProLightCnItaTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-LightItalic", withExtension: "ttf")`
//    static func frutigerLTProLightItalicTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProLightItalicTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-Roman", withExtension: "ttf")`
//    static func frutigerLTProRomanTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProRomanTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    /// `bundle.url(forResource: "FrutigerLTPro-UltraBlack", withExtension: "ttf")`
//    static func frutigerLTProUltraBlackTtf(_: Void = ()) -> Foundation.URL? {
//      let fileResource = R.file.frutigerLTProUltraBlackTtf
//      return fileResource.bundle.url(forResource: fileResource)
//    }
//    
//    fileprivate init() {}
//  }
//  
//  /// This `R.font` struct is generated, and contains static references to 19 fonts.
//  struct font: Rswift.Validatable {
//    /// Font `FrutigerLTPro-BlackCnIta`.
//    static let frutigerLTProBlackCnIta = Rswift.FontResource(fontName: "FrutigerLTPro-BlackCnIta")
//    /// Font `FrutigerLTPro-BlackCn`.
//    static let frutigerLTProBlackCn = Rswift.FontResource(fontName: "FrutigerLTPro-BlackCn")
//    /// Font `FrutigerLTPro-BlackItalic`.
//    static let frutigerLTProBlackItalic = Rswift.FontResource(fontName: "FrutigerLTPro-BlackItalic")
//    /// Font `FrutigerLTPro-Black`.
//    static let frutigerLTProBlack = Rswift.FontResource(fontName: "FrutigerLTPro-Black")
//    /// Font `FrutigerLTPro-BoldCnIta`.
//    static let frutigerLTProBoldCnIta = Rswift.FontResource(fontName: "FrutigerLTPro-BoldCnIta")
//    /// Font `FrutigerLTPro-BoldCn`.
//    static let frutigerLTProBoldCn = Rswift.FontResource(fontName: "FrutigerLTPro-BoldCn")
//    /// Font `FrutigerLTPro-BoldItalic`.
//    static let frutigerLTProBoldItalic = Rswift.FontResource(fontName: "FrutigerLTPro-BoldItalic")
//    /// Font `FrutigerLTPro-Bold`.
//    static let frutigerLTProBold = Rswift.FontResource(fontName: "FrutigerLTPro-Bold")
//    /// Font `FrutigerLTPro-CondensedIta`.
//    static let frutigerLTProCondensedIta = Rswift.FontResource(fontName: "FrutigerLTPro-CondensedIta")
//    /// Font `FrutigerLTPro-Condensed`.
//    static let frutigerLTProCondensed = Rswift.FontResource(fontName: "FrutigerLTPro-Condensed")
//    /// Font `FrutigerLTPro-ExtraBlackCn`.
//    static let frutigerLTProExtraBlackCn = Rswift.FontResource(fontName: "FrutigerLTPro-ExtraBlackCn")
//    /// Font `FrutigerLTPro-ExtraBlkCnIta`.
//    static let frutigerLTProExtraBlkCnIta = Rswift.FontResource(fontName: "FrutigerLTPro-ExtraBlkCnIta")
//    /// Font `FrutigerLTPro-Italic`.
//    static let frutigerLTProItalic = Rswift.FontResource(fontName: "FrutigerLTPro-Italic")
//    /// Font `FrutigerLTPro-LightCnIta`.
//    static let frutigerLTProLightCnIta = Rswift.FontResource(fontName: "FrutigerLTPro-LightCnIta")
//    /// Font `FrutigerLTPro-LightCn`.
//    static let frutigerLTProLightCn = Rswift.FontResource(fontName: "FrutigerLTPro-LightCn")
//    /// Font `FrutigerLTPro-LightItalic`.
//    static let frutigerLTProLightItalic = Rswift.FontResource(fontName: "FrutigerLTPro-LightItalic")
//    /// Font `FrutigerLTPro-Light`.
//    static let frutigerLTProLight = Rswift.FontResource(fontName: "FrutigerLTPro-Light")
//    /// Font `FrutigerLTPro-Roman`.
//    static let frutigerLTProRoman = Rswift.FontResource(fontName: "FrutigerLTPro-Roman")
//    /// Font `FrutigerLTPro-UltraBlack`.
//    static let frutigerLTProUltraBlack = Rswift.FontResource(fontName: "FrutigerLTPro-UltraBlack")
//    
//    /// `UIFont(name: "FrutigerLTPro-Black", size: ...)`
//    static func frutigerLTProBlack(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBlack, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-BlackCn", size: ...)`
//    static func frutigerLTProBlackCn(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBlackCn, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-BlackCnIta", size: ...)`
//    static func frutigerLTProBlackCnIta(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBlackCnIta, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-BlackItalic", size: ...)`
//    static func frutigerLTProBlackItalic(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBlackItalic, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-Bold", size: ...)`
//    static func frutigerLTProBold(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBold, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-BoldCn", size: ...)`
//    static func frutigerLTProBoldCn(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBoldCn, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-BoldCnIta", size: ...)`
//    static func frutigerLTProBoldCnIta(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBoldCnIta, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-BoldItalic", size: ...)`
//    static func frutigerLTProBoldItalic(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProBoldItalic, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-Condensed", size: ...)`
//    static func frutigerLTProCondensed(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProCondensed, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-CondensedIta", size: ...)`
//    static func frutigerLTProCondensedIta(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProCondensedIta, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-ExtraBlackCn", size: ...)`
//    static func frutigerLTProExtraBlackCn(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProExtraBlackCn, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-ExtraBlkCnIta", size: ...)`
//    static func frutigerLTProExtraBlkCnIta(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProExtraBlkCnIta, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-Italic", size: ...)`
//    static func frutigerLTProItalic(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProItalic, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-Light", size: ...)`
//    static func frutigerLTProLight(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProLight, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-LightCn", size: ...)`
//    static func frutigerLTProLightCn(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProLightCn, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-LightCnIta", size: ...)`
//    static func frutigerLTProLightCnIta(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProLightCnIta, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-LightItalic", size: ...)`
//    static func frutigerLTProLightItalic(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProLightItalic, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-Roman", size: ...)`
//    static func frutigerLTProRoman(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProRoman, size: size)
//    }
//    
//    /// `UIFont(name: "FrutigerLTPro-UltraBlack", size: ...)`
//    static func frutigerLTProUltraBlack(size: CGFloat) -> UIKit.UIFont? {
//      return UIKit.UIFont(resource: frutigerLTProUltraBlack, size: size)
//    }
//    
//    static func validate() throws {
//      if R.font.frutigerLTProUltraBlack(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-UltraBlack' could not be loaded, is 'FrutigerLTPro-UltraBlack.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBlackCnIta(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-BlackCnIta' could not be loaded, is 'FrutigerLTPro-BlackCnIta.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBlackCn(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-BlackCn' could not be loaded, is 'FrutigerLTPro-BlackCn.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-Italic' could not be loaded, is 'FrutigerLTPro-Italic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProExtraBlkCnIta(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-ExtraBlkCnIta' could not be loaded, is 'FrutigerLTPro-ExtraBlkCnIta.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProLightCn(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-LightCn' could not be loaded, is 'FrutigerLTPro-LightCn.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProCondensedIta(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-CondensedIta' could not be loaded, is 'FrutigerLTPro-CondensedIta.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBoldCnIta(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-BoldCnIta' could not be loaded, is 'FrutigerLTPro-BoldCnIta.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProLight(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-Light' could not be loaded, is 'FrutigerLTPro-Light.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBlackItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-BlackItalic' could not be loaded, is 'FrutigerLTPro-BlackItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBoldItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-BoldItalic' could not be loaded, is 'FrutigerLTPro-BoldItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBlack(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-Black' could not be loaded, is 'FrutigerLTPro-Black.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProRoman(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-Roman' could not be loaded, is 'FrutigerLTPro-Roman.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBold(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-Bold' could not be loaded, is 'FrutigerLTPro-Bold.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProLightItalic(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-LightItalic' could not be loaded, is 'FrutigerLTPro-LightItalic.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProBoldCn(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-BoldCn' could not be loaded, is 'FrutigerLTPro-BoldCn.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProLightCnIta(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-LightCnIta' could not be loaded, is 'FrutigerLTPro-LightCnIta.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProExtraBlackCn(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-ExtraBlackCn' could not be loaded, is 'FrutigerLTPro-ExtraBlackCn.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//      if R.font.frutigerLTProCondensed(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FrutigerLTPro-Condensed' could not be loaded, is 'FrutigerLTPro-Condensed.ttf' added to the UIAppFonts array in this targets Info.plist?") }
//    }
//    
//    fileprivate init() {}
//  }
//  
//  fileprivate init() {}
//}

