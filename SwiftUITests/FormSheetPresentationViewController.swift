//
//  FormSheetPresentationViewController.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/6/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation
import UIKit

class FormSheetPresentationViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Lifecycle
    
    convenience init() {
        self.init(nibName: String(describing: FormSheetPresentationViewController.self), bundle: Bundle.main)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Private
    
    private func setupView() {
        
    }
    
}

//extension FormSheetPresentationViewController: UITableViewDataSource {
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let cell = 
//    }
//    
//}

