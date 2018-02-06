//
//  Bank.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/6/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation

struct Bank {
    
    // MARK: - Properties
    
    var name: String
    
    // MARK: - Public
    
    static func getList() -> [Bank] {
        var array = [Bank]()
        array.append(Bank(name: "Banco de Crédito del Perú"))
        array.append(Bank(name: "Interbank"))
        array.append(Bank(name: "Scotia Bank"))
        return array
    }
    
}
