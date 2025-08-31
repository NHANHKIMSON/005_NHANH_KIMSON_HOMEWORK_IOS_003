import SwiftUI
struct CardGridView: View{
    var product = Product.product
    var body: some View{
        LazyVGrid(columns: [
            GridItem(.flexible(minimum: 50, maximum: .infinity)),
            GridItem(.flexible(minimum: 50, maximum: .infinity))
        ], alignment: .leading, spacing: 16){
            ForEach(product.indices, id: \.self){ index in
                CartItem(icon: product[index].image, title: product[index].title, subTitle: product[index].subTitle, isFavorite: product[index].isFovorite, price: product[index].price)
            }
            .padding(.horizontal)
        }
        
    }
}

#Preview {
    CardGridView()
}
