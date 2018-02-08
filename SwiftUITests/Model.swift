//
//  Bank.swift
//  SwiftUITests
//
//  Created by Carlos Duclos on 2/6/18.
//  Copyright © 2018 Carlos Duclos. All rights reserved.
//

import Foundation

struct Bank: PickableItem {
    
    // MARK: - Properties
    
    var name: String
    var localizedDescription: String {
        return name
    }
    
    // MARK: - Public
    
    static func getList() -> [Bank] {
        var array = [Bank]()
        array.append(Bank(name: "Banco de Crédito del Perú"))
        array.append(Bank(name: "Interbank"))
        array.append(Bank(name: "Scotia Bank"))
        return array
    }
    
}

struct Service: PickableItem {
    
    // MARK: - Properties
    
    var name: String
    var localizedDescription: String {
        return name
    }
    
    // MARK: - Public
    
    static func getList() -> [Service] {
        var array = [Service]()
        array.append(Service(name: "Service 1"))
        array.append(Service(name: "Service 2"))
        array.append(Service(name: "Service 3"))
        return array
    }
    
}

struct Product: PickableItem {
    
    // MARK: - Properties
    
    var name: String
    var localizedDescription: String {
        return name
    }
    
    // MARK: - Public
    
    static func getList() -> [Product] {
        var array = [Product]()
        array.append(Product(name: "Product 1"))
        array.append(Product(name: "Product 2"))
        array.append(Product(name: "Product 3"))
        return array
    }
    
}
