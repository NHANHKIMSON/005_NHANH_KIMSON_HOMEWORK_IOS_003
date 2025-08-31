import SwiftUI

struct ContentView: View {
    @State var isLogin: Bool = false
    var body: some View {
        if isLogin {
            TabView{
                Home()
                    .tabItem{
                        Label("Home", systemImage: "house.fill")
                    }
                Text("Order")
                    .tabItem{
                        Label("Order", systemImage: "box.truck.fill")
                    }
                Favorite()
                    .tabItem{
                        Label("Favorite", systemImage: "heart.fill")
                    }
                Profile(isLogout: $isLogin)
                    .tabItem{
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            .tint(.blue)
        }else{
            Landing(isHome: $isLogin)
        }
    }
}
#Preview {
    ContentView()
}
