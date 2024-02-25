import SwiftUI

struct TextAnimationValue: View,Animatable{
    var value: Double
    
    
    var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_US")
        return formatter
    }()

    var animatedData: Double{
        get {value}
        set{value=newValue}
    }
    
    var body: some View{
        Text(formatter.string(for: value) ?? "")
    }
}
