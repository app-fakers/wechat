//
//  DefaultAvatarView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/30.
//

import SwiftUI

struct AssetsAvatarView: View {
    var name : String
    var color : Color
    var width: CGFloat = 45
    var height: CGFloat = 45
    var padding: CGFloat = 8
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .padding(padding)
            .frame(width: width, height: height)
            .font(.largeTitle)
            .background{
                Rectangle()
                    .cornerRadius(6)
                    .foregroundColor(color.opacity(0.3))
            }
    }
}

struct DefaultAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            AssetsAvatarView(name: "avatar1", color: Color("avatar_color1"))
            SystemAvatarView(name:"person.fill.badge.plus", color: Color(hex: "ED9541"))
                .foregroundColor(.white)
        }
    }
}


struct SystemAvatarView: View{
    var name : String
    var color : Color
    var width: CGFloat = 45
    var height: CGFloat = 45
    var padding: CGFloat = 8
    var body: some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .padding(padding)
            .frame(width: width, height: height)
            .font(.largeTitle)
            .background{
                Rectangle()
                    .cornerRadius(6)
                    .foregroundColor(color)
            }
    }
}


extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
