//
//  ContentView.swift
//  MyDiplomWork
//
//  Created by хех on 25.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ProductViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 100) {
            
//            ProductSalesSum(productName: viewModel.product.name, sum: viewModel.product.data.sum(\.money))
            
            ProductBar(data: viewModel.product.data,
            range: viewModel.SalesRange)
            
            ProductPicker(options: viewModel.productPickerOptions, selection: $viewModel.productIndex.animation(.easeIn(duration: 0.6)))
            
        }.padding()
    }
}

#Preview {
    ContentView()
}
