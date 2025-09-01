import SwiftUI
struct MyOrder: View {
    let columns = [
        GridItem(.flexible(), spacing: 8)
    ]
    var product = Product.myOrder
    let color: Color = .yellow
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8){
            ScrollView{
                ForEach(product.indices, id: \.self){index in
                    OrderCard(image: product[index].image, qauntity: product[index].qauntity, color: color, price: product[index].price)
                }
            }
        }
    }
}

#Preview {
    MyOrder()
}
