//
//  ContactsCategoryView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/30.
//

import SwiftUI

struct ContactsCategoryView: View {
    var avatarName: String
    var color: Color
    var title: String
    var body: some View {
        HStack{
            SystemAvatarView(name: avatarName,color: color,width: 40, height: 40)
                .foregroundColor(.white)
            Text(title).font(.title3)
            Spacer()
        }
    }
}

struct ContactsItemView: View {
    var avatarName: String
    var color: Color
    var title: String
    var body: some View {
        HStack{
            AssetsAvatarView(name: avatarName,color: color)
                .foregroundColor(.white)
            Text(title).font(.title3)
            Spacer()
        }
    }
}

struct ContactsCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ContactsCategoryView(avatarName: "person.fill.badge.plus", color: Color(hex: "ED9541"), title: "新的朋友")
            ContactsItemView(avatarName: "person.fill.badge.plus", color: Color(hex: "ED9541"), title: "新的朋友")
        }
    }
}
