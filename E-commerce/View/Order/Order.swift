import SwiftUI
struct Order: View {
    var tab = ["My Order", "History"]
    @State var selectedTab: Int = 0
    var body: some View {
        NavigationStack{
            VStack{
                TopMenu(tab: self.tab, selectedTab: $selectedTab)
                ScrollView{
                    if selectedTab == 0{
                        MyOrder()
                    }else{
                        History()
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("My Order")
                        .bold()
                        .font(.title3)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview{
    Order()
}
