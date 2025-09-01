//
//  Untitled.swift
//  Psakhmer
//
//  Created by Apple on 9/1/25.
//
import SwiftUI
struct CircleImageGradient: View {
    var body: some View {
        // Image circle
        VStack(alignment: .center){
            bedge(iconName: "bagboy1")
                .clipShape(.circle)
                .frame(minWidth: 32, maxWidth: 96)
                .overlay{
                    RoundedRectangle(cornerRadius: .infinity)
                        .stroke(LinearGradient(colors: [.red, .blue, .yellow], startPoint: .top, endPoint: .bottom), lineWidth: 2)
                        .shadow(radius: 114)
                }
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 32)
    }
}
