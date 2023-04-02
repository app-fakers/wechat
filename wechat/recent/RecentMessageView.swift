//
//  RecentMessageView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct RecentMessageView: View {
    var message: RecentMessage
    var body: some View {
        HStack{
            AvatarView(avatarIndex: message.avatarIndex, avatarColorIndex: message.avatarColorIndex, avatarWidth: 46, avatarHeight: 46)
                .overlay(alignment: .topTrailing) {
                    if message.notified {
                        Circle()
                            .frame(width: 10,height: 10)
                            .foregroundColor(.red)
                            .offset(x: 3, y: -3)
                    }
                }
            VStack{
                HStack{
                    Text(message.title)
                        .font(.title3)
                    Spacer()
                    Text(message.date)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                HStack{
                    Text(message.recentMessage)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Spacer()
                    if message.mutex{
                        Image(systemName: "bell.slash")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct RecentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessageView(message: RecentMessage(title: "铁路12306",pinyin: "", recentMessage: "最近消息", date: "7:23", cover: "video.fill.badge.plus", mutex: true))
            .padding()
    }
}
