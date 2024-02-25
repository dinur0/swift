//
//  Sales.swift
//  MyDiplomWork
//
//  Created by хех on 25.02.2024.
//

import Foundation

struct Sales: Identifiable{
    let dayOfWeek: String
    let money: Double
    var id: String {dayOfWeek}
}
