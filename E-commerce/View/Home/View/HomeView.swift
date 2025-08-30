//
//  Test.swift
//  Psakhmer
//
//  Created by Apple on 8/28/25.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab: Int = 0
    var body: some View {
        VStack{
            HStack{
                bedge(iconName: "bagboy1")
                    .cornerRadius(.infinity)
                    .frame(width: 46)
                VStack(alignment: .leading, spacing: 9){
                    Text("Hi, Nhanh Kimson")
                        .bold()
                        .font(.headline)
                    Text("Let's go shopping!")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                HStack{
                    Image(systemName: "bell")
                    Image(systemName: "magnifyingglass")
                }
                .font(.title2)
            }
            .padding()
            
            VStack{
                CustomTopTabBar(selectedTab: $selectedTab)
                TabView(selection: $selectedTab){
                    SubHomeView()
                        .toolbar(.automatic, for: .tabBar)
                        .tag(0)
                    Text("New")
                        .toolbar(.automatic, for: .tabBar)
                        .tag(1)
                }
                .tabViewStyle(.page)
            }
        }
    }
}


#Preview {
    Home()
}
