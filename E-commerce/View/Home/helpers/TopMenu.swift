import SwiftUI
struct TopMenu: View{
    var tab = ["Home", "Category"]
    @Binding var selectedTab: Int
    var body: some View{
        HStack{
            ForEach(tab.indices, id: \.self){ index in
                Button(action: {withAnimation{
                    selectedTab = index
                }}){
                    VStack{
                        Text("\(tab[index])")
                            .font(.title3)
                            .foregroundStyle(.black)
                        Capsule()
                            .fill(selectedTab == index ? Color(.blue) : Color.clear)
                            .frame(height: 3)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
#Preview {
    Order()
}
