import SwiftUI

struct CartItem: View{
    var icon: String = ""
    var title: String = ""
    var subTitle: String = ""
    @State var isFavorite: Bool = false
    var price: Double = 0.00
    var body: some View{
        ZStack{
            VStack{
                Image(icon)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 150, maxHeight: 145)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                
                VStack(spacing: 12){
                    Text(title)
                        .bold()
                    Text(subTitle)
                        .foregroundStyle(.gray)
                    Text(formatCurrency(price, currencyCode: "USD"))
                        .bold()
                }
            }
            .overlay(
                Button{
                    isFavorite = isFavorite == true ? false : true
                }label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundStyle(.red)
                        .frame(width: 26, height: 26)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(.infinity)
                        .padding([.top, .trailing], 16)
                }
                , alignment: .topTrailing
            )
            
        }
    }
}
#Preview{
    SubHome()
}
