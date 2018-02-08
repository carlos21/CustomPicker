//
//  FormSelectableCell.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/5/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit
import MZFormSheetPresentationController

protocol FormSelectableCellDelegate: NSObjectProtocol {
    
    func formDidSelectPickerButtonOn(cell: FormSelectableCell)
    
}

@IBDesignable
class FormSelectableCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var optionsButton: ButtonPicker!
    
    // MARK: - Properties
    
    weak var delegate: FormSelectableCellDelegate?
    var view: UIView!
    
    // MARK: - Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    // MARK: - Private
    
    private func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView {
        let name = String(describing: FormSelectableCell.self)
        let bundle = Bundle(for: FormSelectableCell.self)
        let nib = UINib(nibName: name, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    // MARK: - Actions
    
    @IBAction func itemPressed(_ sender: Any) {
        delegate?.formDidSelectPickerButtonOn(cell: self)
    }
    
}
