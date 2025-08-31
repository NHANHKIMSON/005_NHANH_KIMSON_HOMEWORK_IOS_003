import SwiftUI

struct CustomTopTabBar: View {
    @Binding var selectedTab: Int
    let tabs = ["Home", "Category"]
    var body: some View {
        HStack{
            ForEach(tabs.indices, id: \.self){index in
                Button(action: {
                    selectedTab = index
                }, label: {
                    VStack{
                        Text(tabs[index])
                            .font(.title3)
                            .bold()
                            .foregroundStyle(selectedTab == index ? .black : .gray)
                        if selectedTab == index{
                            Rectangle()
                                .frame(height: 4)
                                .foregroundStyle(.blue)
                        }
                    }
                })
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    Home()
}
