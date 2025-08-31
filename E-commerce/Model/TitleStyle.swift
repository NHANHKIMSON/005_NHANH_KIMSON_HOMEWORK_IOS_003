//
//  TitleStyle.swift
//  E-commerce
//
//  Created by Apple on 8/25/25.
//

import Foundation
import SwiftUI
struct TitleStyle{
    var font: Font
    var color: Color
    var opacity: Double
    var isBold: Bool
    
    static let main = TitleStyle(font: .title, color: .primary, opacity: 1, isBold: true)
    static let subtitle = TitleStyle(font: .subheadline, color: Color(.systemGray), opacity: 0.9, isBold: false)
}











func ImageResizeToFit(name: String) -> some View{
    Image(name)
        .resizable()
        .scaledToFit()
        .cornerRadius(24)
        .frame(maxWidth: .infinity, alignment: .center)
}
func Title(_ text: String, style: TitleStyle) -> some View{
    Text(text)
        .font(style.font)
        .bold(style.isBold)
        .foregroundStyle(style.color)
        .opacity(style.opacity)
        .lineLimit(2)
        .frame(maxWidth: .infinity, alignment: .center)
        .multilineTextAlignment(.center)
}
