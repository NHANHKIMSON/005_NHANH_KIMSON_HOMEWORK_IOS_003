import SwiftUI
struct Carousel: View {
    @State private var currentIndex: Int = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var product = Product.promotion
    var body: some View {
        TabView(selection: $currentIndex){
            ForEach(product.indices, id: \.self){ index in
                VStack{
                    Image(product[index].image)
                        .resizable() // resize + aspect = resize and scall it to fill into frame
                        .scaledToFill()
//                        .aspectRatio(contentMode: .fill)
                        .frame(
                            minWidth: 0,    // frame need the fix starting to resizd
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity
                        )
                        .aspectRatio(16 / 9, contentMode: .fill)
                        .clipShape(.rect)
                        .cornerRadius(24)
                }
                .tag(index)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .never))
        .onReceive(timer){ _ in
            withAnimation{
                currentIndex = (currentIndex + 1) % product.count
            }
        }
    }
}
#Preview{
    SubHome()
}
