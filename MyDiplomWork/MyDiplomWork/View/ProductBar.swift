//
//  ProductBar.swift
//  MyDiplomWork
//
//  Created by хех on 25.02.2024.
//

import SwiftUI
import Charts
struct ProductBar: View {
    var data: [Sales]
    var range: ClosedRange<Int>
    var body: some View{
        Chart{
            ForEach(data) {item in
                BarMark(x: .value("Weekday", item.dayOfWeek),
                        y: .value("Sales", item.money)
                )
                .annotation(position: AnnotationPosition.top) {
                    Text("\(item.money, format: .number.precision(.fractionLength(1)))")
                        .frame(minWidth: 100)
                        .font(.caption2)
                }
                .foregroundStyle(.red.gradient)
            }
        }
        .chartYScale(domain: range)
    }
}

#Preview {
    ContentView()
}
