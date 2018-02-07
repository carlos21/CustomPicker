//
//  FormViewController.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/6/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit
import MZFormSheetPresentationController

enum FormItemType {
    
    case selectable
    case text
    
}

protocol FormItemVM {
    
    var title: String { get set }
    var formType: FormItemType { get set }
    var selectedItem: PickableItem? { get set }
    
}

protocol FormItemPosition {
    
}

struct PayOtherCardVM: FormItemVM {
    
    var title: String
    var formType: FormItemType
    var selectedItem: PickableItem?
    var position: PayOtherCardPosition
}

enum PayOtherCardPosition: Int, FormItemPosition {
    
    case bank = 0
    case service = 1
    case product = 2
    
}


class FormViewController: UITableViewController {
    
    // MARK: - Properties
    
    var selectedBank: BankVM?
    var formItems: [FormItemVM] = []
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bankItem = PayOtherCardVM(title: "Enter your bank:", formType: .selectable, selectedItem: nil, position: .bank)
        let serviceItem = PayOtherCardVM(title: "Enter your service:", formType: .selectable, selectedItem: nil, position: .service)
        let productItem = PayOtherCardVM(title: "Enter your product:", formType: .selectable, selectedItem: nil, position: .product)
        formItems = [bankItem, serviceItem, productItem]
        
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.reloadData()
    }
    
    // MARK: - Override
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return formItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let formItem = formItems[indexPath.row]
        let identifier = String(describing: FormTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! FormTableViewCell
        cell.setupView(with: formItem, delegate: self)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // MARK: - Private
    
    private func createPickerController(forCell cell: FormTableViewCell) -> MZFormSheetPresentationViewController {
        let pickerController = PickerViewController<BankVM>(items: BankVM.getList())
        pickerController.delegate = cell
        
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: pickerController)
        formSheetController.presentationController?.shouldCenterVertically = true
        formSheetController.contentViewCornerRadius = 15.0
        return formSheetController
    }
    
}

extension FormViewController: FormTableViewCellDelegate {
    
    func formViewCell(_ cell: FormTableViewCell, didSelectItem item: PickableItem) {
        
    }
    
    func formViewCell(_ cell: FormTableViewCell, didSelectFormItem item: FormItemVM) {
        let pickerController = createPickerController(forCell: cell)
        present(pickerController, animated: true, completion: nil)
    }
    
}
