//
//  Functionality.swift
//  E-commerce
//
//  Created by Apple on 8/25/25.
//

import SwiftUI


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Fomat the currency
func formatCurrency(_ amount: Double, currencyCode: String = "USD") -> String{
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencyCode = currencyCode
    return formatter.string(from: NSNumber(value: amount)) ?? "\(amount)"
}
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

func primaryButton(text: String, _ isNoneBg: Bool, action: @escaping()-> Void) -> some View{
    Button(action: action,
    label: {
        Text(text)
            .foregroundStyle(isNoneBg ? .blue : .white)
            .frame(maxWidth: .infinity)
            .font(.title3)
            .padding(.vertical, isNoneBg ? 0 : 14)
            .background(isNoneBg ? .clear : Color(.blue))
            .cornerRadius(24)
    })
}

func primaryButtonIcon(text: String, iconName: String, action:@escaping() -> Void) -> some View{
    Button(action: action, label: {
        HStack{
            bedge(iconName: iconName)
                .frame(width: 42)
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .lineLimit(1)
            Spacer()
        }
        .padding(.vertical, 9)
        .padding(.horizontal, 36)
        .frame(maxWidth: .infinity)
        .multilineTextAlignment(.leading)
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .stroke(.gray.opacity(0.2))
        )
    })
}

func bedge(iconName: String) -> some View{
    Image(iconName)
        .resizable()
        .scaledToFit()
        .frame(maxWidth: .infinity)
}



#Preview {
    ContentView()
}
