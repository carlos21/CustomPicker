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
    
    func formViewCell(_ cell: UITableViewCell, didSelectFormItem item: TableItemVM, controller: MZFormSheetPresentationViewController)
    
}

class FormTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var optionsButton: UIButton!
    weak var delegate: FormTableViewCellDelegate?
    var tableItem: TableItemVM?
    var selectedItem: PickableItem?
    
    // MARK: - Private
    
    func updateView() {
        optionsButton.setTitle(selectedItem?.description, for: .normal)
    }
    
    private func createPickerController() -> MZFormSheetPresentationViewController {
        let pickerController = PickerViewController<BankVM>(items: BankVM.getList())
        pickerController.delegate = self
        
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: pickerController)
        formSheetController.presentationController?.shouldCenterVertically = true
        formSheetController.contentViewCornerRadius = 15.0
        
        return formSheetController
    }
    
    // MARK: - Public
    
    func setupView(with tableItem: TableItemVM, delegate: FormTableViewCellDelegate) {
        self.tableItem = tableItem
        self.delegate = delegate
        optionsButton.setTitle("Choose", for: .normal)
    }
    
    // MARK: - Actions
    
    @IBAction func itemPressed(_ sender: Any) {
        delegate?.formViewCell(self, didSelectFormItem: self.tableItem!, controller: createPickerController())
    }
    
}

extension FormTableViewCell: PickerViewControllerDelegate {
    
    func pickerViewController<Item>(_ controller: PickerViewController<Item>, didSelectItem item: Item?) {
        selectedItem = item
        updateView()
    }
    
}

