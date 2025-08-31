import SwiftUI


struct CategoryCard: View{
    var index: Int = 0
    var status: String = "New Arrivals"
    var image: String = "bag"
    var qauntity: Int = 01
    var body: some View{
        VStack{
            Image(image)
                .resizable() // resize + aspect = resize and scall it to fill into frame
                .scaledToFill()
//                        .aspectRatio(contentMode: .fill)
                .frame(
                    minWidth: 0,    // frame need the fix starting to resizd
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity
                )
                .aspectRatio(26 / 9, contentMode: .fit)
                .clipShape(.rect)
                .cornerRadius(12)
                .overlay(
                    VStack(alignment: .leading){
                        Text(status)
                            .bold()
                        Text("\(qauntity) Products")
                            .font(.footnote)
                        
    
                    }
                        .padding(.horizontal)
                    , alignment:  index % 2 == 0 ? .leading : .trailing)
        }
        .padding(.horizontal)
    }
}

#Preview {
    CategoryCard()
}
