//
//  FormSheetPickerViewController.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/5/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

protocol PickableItem: CustomStringConvertible {}

protocol PickerViewControllerDelegate: NSObjectProtocol {
    
    func pickerViewController<Item>(_ controller: PickerViewController<Item>, didSelectItem item: Item?)
    
}

final class PickerViewController<Item: PickableItem>: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Properties
    
    weak var delegate: PickerViewControllerDelegate?
    var selectedItem: Item?
    var items: [Item] = []
    
    // MARK: - Lifecycle
    
    convenience init(items: [Item]) {
        self.init(nibName: "PickerViewController", bundle: Bundle.main)
        self.items = items
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(PickerViewTableViewCell.self, forCellReuseIdentifier: "PickerViewTableViewCell")
        tableView.estimatedRowHeight = 76
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.reloadData()
    }
    
    // MARK: - Actions
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.pickerViewController(self, didSelectItem: nil)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let identifier = String(describing: PickerViewTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! PickerViewTableViewCell
        cell.setup(item: item)
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
        delegate?.pickerViewController(self, didSelectItem: items[indexPath.row])
    }
    
}
