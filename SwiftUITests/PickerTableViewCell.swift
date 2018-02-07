//
//  PickerTableViewCell.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/5/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import UIKit

class PickerTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let selectedBackgroundView = UIView()
        selectedBackgroundView.backgroundColor = .gray
        self.selectedBackgroundView = selectedBackgroundView
    }
    
    // MARK: - Private
    
    func setup<Item>(item: Item) where Item: PickableItem {
        nameLabel.text = item.description
    }
    
}
