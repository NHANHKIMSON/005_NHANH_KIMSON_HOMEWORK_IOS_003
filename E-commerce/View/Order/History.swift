//
//  History.swift
//  Psakhmer
//
//  Created by Apple on 9/1/25.
//

import SwiftUI
struct History: View {
    let columns = [GridItem(.flexible())]
    var product = Product.product
    let color: Color = Color(.systemGreen)
    var body: some View {
        LazyVGrid(columns: columns){
            ScrollView{
                ForEach(product.indices, id: \.self){index in
                    OrderCard(image: product[index].image, qauntity: product[index].qauntity, color: color, price: product[index].price)
                }
            }
        }
    }
}

#Preview{
    Order()
}
