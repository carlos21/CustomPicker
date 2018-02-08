//
//  BankVM.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/6/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation

struct BankVM: PickableItem {
    
    // MARK: - Properties
    
    var name: String
    var localizedDescription: String {
        return name
    }
    
    // MARK: - Public
    
    static func getList() -> [BankVM] {
        return Bank.getList().map { BankVM(name: $0.name) }
    }
    
}
