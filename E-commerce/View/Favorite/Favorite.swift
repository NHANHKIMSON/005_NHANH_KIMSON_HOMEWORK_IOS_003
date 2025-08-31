import SwiftUI
struct Favorite: View {
    var body: some View {
        NavigationStack{
            MenuScrollBar()
            ScrollView{
                CardGridView()
            }
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("My Favorite")
                        .font(.title2)
                        .bold()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    Favorite()
}
