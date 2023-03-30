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
            AvatarView()
            VStack{
                HStack{
                    Text(message.title)
                        .font(.title2)
                    Spacer()
                    Text(message.date)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                HStack{
                    Text(message.recentMessage)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    if message.mutex{
                        Image(systemName: "bell.slash")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                Divider()
                    .padding(.bottom, 0)
            }
        }
    }
}

struct RecentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessageView(message: RecentMessage(title: "铁路12306", recentMessage: "网络一线牵", date: "7:23", cover: "video.fill.badge.plus",mutex: true))
    }
}
