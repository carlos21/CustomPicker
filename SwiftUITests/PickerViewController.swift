//
//  FormSheetPickerViewController.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/5/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

protocol PickableItem {
    var localizedDescription: String { get }
}

protocol PickerViewControllerDelegate: NSObjectProtocol {
    
    func pickerViewController(_ controller: PickerViewController, didSelectItem item: PickableItem)
    func pickerViewControllerCancelPressed(_ controller: PickerViewController)
    
}

final class PickerViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var separatorView1: UIView!
    @IBOutlet private weak var separatorView2: UIView!
    
    // MARK: - Properties
    
    weak var delegate: PickerViewControllerDelegate?
    var selectedItem: PickableItem?
    var items: [PickableItem] = []
    
    // MARK: - Lifecycle
    
    convenience init(title: String, items: [PickableItem]) {
        self.init(nibName: String(describing: PickerViewController.self), bundle: Bundle.main)
        self.items = items
        self.title = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nameCell = String(describing: PickerTableViewCell.self)
        let nib = UINib(nibName: nameCell, bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: nameCell)
        
        tableView.estimatedRowHeight = 76
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.reloadData()
        
        titleLabel.text = title
        
//        cancelButton.titleLabel?.font = Font.sbpFontContentBold1
        cancelButton.setTitleColor(Color.purpleSBColor, for: .normal)
        cancelButton.setTitle("Cancel", for: .normal)
        [separatorView1, separatorView2].forEach({ $0?.backgroundColor = Color.lightGray3SBColor })
    }
    
    // MARK: - Actions
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.pickerViewControllerCancelPressed(self)
    }
    
}

extension PickerViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let identifier = String(describing: PickerTableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! PickerTableViewCell
        cell.setup(item: item)
        return cell
    }
    
}

extension PickerViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
        delegate?.pickerViewController(self, didSelectItem: items[indexPath.row])
    }
    
}
