//
//  SubHomeView.swift
//  Psakhmer
//
//  Created by Apple on 8/29/25.
//

import SwiftUI

struct SubHomeView: View {
    var body: some View {
        ScrollView{
            Carousel()
        }
    }
}

#Preview {
    Home()
}


struct Carousel: View {
    var body: some View {
        TabView{
            Image("Dior")
            Image("Dior")
            Image("Dior")
            Image("Dior")
            Image("Dior")
            Image("Dior")
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}
