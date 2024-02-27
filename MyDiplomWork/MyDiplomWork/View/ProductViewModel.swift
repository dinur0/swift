//
//  ProductViewModel.swift
//  MyDiplomWork
//
//  Created by хех on 25.02.2024.
//

import Foundation

class ProductViewModel: ObservableObject{
    @Published var productIndex = 0
    
    var productPickerOptions = [
        ProductPickerOption(name: "Monitor", tag: 0),
        ProductPickerOption(name: "Smartphone", tag: 1),
        ProductPickerOption(name: "video card", tag: 2),
    ]
    
    private let productsData = [
        Product(name: "Monitor", data: [
            .init(dayOfWeek: "Monday", money: 12000.00),
            .init(dayOfWeek: "Tuesday", money: 12500.00),
            .init(dayOfWeek: "Wednesday", money: 12400.00),
            .init(dayOfWeek: "Thursday", money: 13000.00),
            .init(dayOfWeek: "Friday", money: 13400.00),
        ]),
        Product(name: "Smartphone", data: [
            .init(dayOfWeek: "Monday", money: 34000.00),
            .init(dayOfWeek: "Tuesday", money: 36000.00),
            .init(dayOfWeek: "Wednesday", money: 38000.00),
            .init(dayOfWeek: "Thursday", money: 37000.00),
            .init(dayOfWeek: "Friday", money: 35500.00),
        ]),
        Product(name: "video card", data: [
            .init(dayOfWeek: "Monday", money: 65000.00),
            .init(dayOfWeek: "Tuesday", money: 72000.00),
            .init(dayOfWeek: "Wednesday", money: 68000.00),
            .init(dayOfWeek: "Thursday", money: 69400.00),
            .init(dayOfWeek: "Friday", money: 68300.00),
        ])
    ]
    
    var product: Product{
        return productsData[productIndex]
    }
    
    var SalesRange = 1...100000
}

