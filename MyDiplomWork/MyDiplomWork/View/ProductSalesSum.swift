import SwiftUI

struct ProductSalesSum: View {
    var productName: String
    var sum: Double
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text ("Weekly \(productName) Sales")
                .font (.title2)
                .transaction { transaction in
                    transaction.animation = nil
                }
//            Text ("\(sum)")
            TextAnimationValue(value: sum)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .monospacedDigit()
        }
    }
}

#Preview {
    ContentView()
}
