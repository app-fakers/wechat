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
    var width: CGFloat = 60
    var height: CGFloat = 60
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
                    .frame(width: width, height: height)
                    .cornerRadius(6)
                    .foregroundColor(color.opacity(0.3))
            }
            .padding(.leading)
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
    var width: CGFloat = 60
    var height: CGFloat = 60
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
                    .frame(width: width, height: height)
                    .cornerRadius(6)
                    .foregroundColor(color)
            }
            .padding(.leading)
    }
}
