//
//  AvatarView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/30.
//

import SwiftUI

struct AvatarView: View {
    var avatarIndex = Int.random(in: 0...9)
    var avatarColorIndex = Int.random(in: 0...9)
    var body: some View {
        AssetsAvatarView(name: "avatar\(avatarIndex)", color: Color("avatar_color\(avatarColorIndex)"))
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessageView(message: RecentMessage(title: "和谐一家亲", recentMessage: "网络一线牵", date: "7:23", cover: "video.fill.badge.plus"))
    }
}
