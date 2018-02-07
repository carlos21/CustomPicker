//
//  FormTableViewCell.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/5/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit
import MZFormSheetPresentationController

protocol FormTableViewCellDelegate: NSObjectProtocol {
    
    func formViewCell(_ cell: FormTableViewCell, didSelectFormItem item: FormItemVM)
    func formViewCell(_ cell: FormTableViewCell, didSelectItem item: PickableItem)
    
}

@IBDesignable
class FormTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var optionsButton: UIButton!
    
    // MARK: - Properties
    
    weak var delegate: FormTableViewCellDelegate?
    var formItem: FormItemVM?
    var selectedItem: PickableItem?
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
        let name = String(describing: FormTableViewCell.self)
        let bundle = Bundle(for: FormTableViewCell.self)
        let nib = UINib(nibName: name, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    private func updateView() {
        optionsButton.setTitle(selectedItem?.description, for: .normal)
    }
    
    // MARK: - Public
    
    func setupView(with formItem: FormItemVM, delegate: FormTableViewCellDelegate) {
        self.formItem = formItem
        self.delegate = delegate
        selectionStyle = .none
        optionsButton.setTitle("Choose", for: .normal)
    }
    
    // MARK: - Actions
    
    @IBAction func itemPressed(_ sender: Any) {
        delegate?.formViewCell(self, didSelectFormItem: self.formItem!)
    }
    
}

extension FormTableViewCell: PickerViewControllerDelegate {
    
    func pickerViewController<Item>(_ controller: PickerViewController<Item>, didSelectItem item: Item) {
        selectedItem = item
        updateView()
    }
    
    func pickerViewControllerCancelPressed<Item>(_ controller: PickerViewController<Item>) {
        
    }
    
}

