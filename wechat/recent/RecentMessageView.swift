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
            Image(systemName: message.cover)
                .foregroundColor(.red.opacity(0.5))
                .font(.largeTitle)
                .background{
                    Rectangle()
                        .frame(width: 60, height: 60)
                        .cornerRadius(6)
                        .foregroundColor(.gray.opacity(0.3))
                }
                .padding(.horizontal)
            VStack{
                HStack{
                    Text(message.title)
                        .font(.title2)
                    Spacer()
                    Text(message.date.formatted())
                }
                HStack{
                    Text(message.recentMessage)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }
    }
}

struct RecentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessageView(message: RecentMessage(title: "和谐一家亲", recentMessage: "网络一线牵", cover: "video.fill.badge.plus"))
    }
}
