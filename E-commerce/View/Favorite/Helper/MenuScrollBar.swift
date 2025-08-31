import SwiftUI
struct MenuScrollBar: View {
    let tab = ["All", "Latest", "Most Popular", "Last Week", "Last Month", "Last Year"]
    let tabImage = ["star", "person"]
    @State private var selectedTab: Int = 0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(tab.indices, id: \.self){ index in
                    Button(action: {withAnimation{
                        selectedTab = index
                    }}) {
                        Text(tab[index])
                            .padding(.vertical ,8)
                            .padding(.horizontal, 12)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(selectedTab == index ? .white : .black)
                            .background(selectedTab == index ? .blue : .clear)
                            .overlay{
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
            }
        }
        .padding(.leading, 16)
    }
}
