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
    
    // MARK: - Properties
    
    var selectedBank: BankVM?
    var tableItems: [TableItemVM] = []
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = TableItemVM(title: "Enter your bank:")
        tableItems.append(item)
        
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.reloadData()
    }
    
    // MARK: - Override
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableItem = tableItems[indexPath.row]
        let identifier = String(describing: FormTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! FormTableViewCell
        cell.setupView(with: tableItem, delegate: self)
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
    
    func formViewCell(_ cell: FormTableViewCell, didSelectFormItem item: TableItemVM) {
        let pickerController = createPickerController(forCell: cell)
        present(pickerController, animated: true, completion: nil)
    }
    
}
