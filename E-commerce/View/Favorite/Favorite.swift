//
//  Favorite.swift
//  Psakhmer
//
//  Created by Apple on 8/30/25.
//

import SwiftUI

struct Favorite: View {
    var body: some View {
        CartItem()
            .padding()
    }
}

#Preview {
    Favorite()
}


struct CartItem: View{
    var icon: String = ""
    var title: String = ""
    var subTitle: String = ""
    var price: Double = 0.00
    var body: some View{
        VStack{
            bedge(iconName: "bagboy1")
                .cornerRadius(24)
            Text(title)
            Text(subTitle)
            Text(formatCurrency(price, currencyCode: "USD"))
        }
    }
}


