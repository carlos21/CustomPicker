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

class FormViewController: UITableViewController {
    
    enum PayOtherCardField: Int {
        
        case bank = 0
        case service = 1
        case product = 2
        
        var items: [PickableItem] {
            switch self {
            case .bank:
                return Bank.getList()
            case .service:
                return Service.getList()
            case .product:
                return Product.getList()
            }
        }
        
        var title: String {
            switch self {
            case .bank:
                return "Select a Bank"
            case .service:
                return "Select a Service"
            case .product:
                return "Select a Product"
            }
        }
    }
    
    // MARK: - Properties
    
    var selectedBank: Bank?
    var selectedProduct: Product?
    var selectedService: Service?
    var fields: [PayOtherCardField] = []
    var currentField: PayOtherCardField?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fields = [.bank, .service, .product]
        
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.reloadData()
    }
    
    // MARK: - Override
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fields.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let selectableIdentifier = String(describing: FormSelectableCell.self)
        let field = fields[indexPath.row]
        var reusableCell: UITableViewCell;
        
        switch field {
        case .bank:
            let cell = tableView.dequeueReusableCell(withIdentifier: selectableIdentifier, for: indexPath) as! FormSelectableCell
            cell.titleLabel.text = "Enter your bank:"
            cell.optionsButton.setTitle(selectedBank != nil ? selectedBank?.localizedDescription : "Choose", for: .normal)
            cell.delegate = self
            reusableCell = cell
            
        case .service:
            let cell = tableView.dequeueReusableCell(withIdentifier: selectableIdentifier, for: indexPath) as! FormSelectableCell
            cell.titleLabel.text = "Enter your service:"
            cell.optionsButton.setTitle(selectedService != nil ? selectedService?.localizedDescription : "Choose", for: .normal)
            cell.delegate = self
            reusableCell = cell
            
        case .product:
            let cell = tableView.dequeueReusableCell(withIdentifier: selectableIdentifier, for: indexPath) as! FormSelectableCell
            cell.titleLabel.text = "Enter your product:"
            cell.optionsButton.setTitle(selectedProduct != nil ? selectedProduct?.localizedDescription : "Choose", for: .normal)
            cell.delegate = self
            reusableCell = cell
        }
        
        reusableCell.selectionStyle = .none
        return reusableCell
    }
    
    // MARK: - Private
    
    private func createPickerController(forCell cell: FormSelectableCell) -> MZFormSheetPresentationViewController {
        let pickerController = PickerViewController(title: currentField!.title, items: currentField!.items)
        pickerController.delegate = self
        
        let formSheetController = MZFormSheetPresentationViewController(contentViewController: pickerController)
        formSheetController.presentationController?.shouldCenterVertically = true
        formSheetController.contentViewCornerRadius = 15.0
        return formSheetController
    }
    
}

extension FormViewController: FormSelectableCellDelegate {
    
    func formDidSelectPickerButtonOn(cell: FormSelectableCell) {
        let indexPath = tableView.indexPath(for: cell)!
        currentField = PayOtherCardField(rawValue: indexPath.row)!
        
        let pickerController = createPickerController(forCell: cell)
        present(pickerController, animated: true, completion: nil)
    }
    
}

extension FormViewController: PickerViewControllerDelegate {
    
    func pickerViewController(_ controller: PickerViewController, didSelectItem item: PickableItem) {
        
        switch currentField! {
        case .bank:
            self.selectedBank = item as? Bank
            print("self.selectedBank", self.selectedBank!)
        case .service:
            self.selectedService = item as? Service
            print("self.selectedService", self.selectedService!)
        case .product:
            self.selectedProduct = item as? Product
            print("self.selectedProduct", self.selectedProduct!)
        }
        
        tableView.reloadData()
    }
    
    func pickerViewControllerCancelPressed(_ controller: PickerViewController) {
        
    }
    
}

