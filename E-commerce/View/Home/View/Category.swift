//
//  Category.swift
//  Psakhmer
//
//  Created by Apple on 8/30/25.
//

import SwiftUI

struct Category: View {
    var product = Product.product
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible(minimum: 50, maximum: .infinity))]){
            ForEach(product.indices, id: \.self){ index in
                CategoryCard(index: index, status: product[index].status, image: product[index].image, qauntity: product[index].qauntity)
            }
        }
    }
}

#Preview {
    Category()
}
