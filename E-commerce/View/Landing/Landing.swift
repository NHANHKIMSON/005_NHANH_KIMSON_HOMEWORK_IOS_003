//
//  Landing.swift
//  Psakhmer
//
//  Created by Apple on 8/31/25.
//
import SwiftUI
struct Landing: View{
    var pages: [AnyView] = [AnyView(LandingOne(iamge: "watchTissot")), AnyView(LandingOne(iamge: "bagboy1")), AnyView(LandingOne(iamge: "watchWoman"))]
    @State private var isLogin = User.user.isLogin
    @Binding var isHome: Bool
    var body: some View{
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
                        CreateAccount(isLoged: $isHome)
                            .navigationBarBackButtonHidden(true)
                    }
                    primaryButton(text: "Already have an account", true){
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
#Preview{
    ContentView()
}
