import SwiftUI

struct ContentView: View {
    var pages: [AnyView] = [AnyView(LandingOne(iamge: "watchTissot")), AnyView(LandingOne(iamge: "bagboy1")), AnyView(LandingOne(iamge: "watchWoman"))]
    @State var isLogin: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                TabView{
                    ForEach(pages.indices, id: \.self){ index in
                        pages[index]
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                VStack(spacing: 18){
                    primaryButton(text: "Create an account", false){
                        isLogin = true
                    }
                    .navigationDestination(isPresented: $isLogin){
                        CreateAccount()
                            .navigationBarBackButtonHidden(true)
                    }
                    primaryButton(text: "Already have an account", true){
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
