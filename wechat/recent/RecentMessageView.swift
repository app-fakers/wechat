//
//  RecentMessageView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct RecentMessageView: View {
    @GestureState var updatingOffset: CGFloat = 0
    
    //滑动应该停留在某个点
    //停留点： 屏幕宽度的3/5
    let maxOffset:CGFloat = -UIScreen.main.bounds.width * 3 / 5
    //滑动展开之后的 offset
    @State var expandOffset:CGFloat = 0
    
    @State var offset: CGFloat = 0
    
    //回弹点：最大停留点/2
    private var springOffset:CGFloat{
        maxOffset / 2
    }
    //缩放比例，默认是1
    @State private var scaleRatio:CGFloat = 1
    
    //最小 可缩放值
    let minScale:CGFloat = 0.9
    var message: RecentMessage
    var body: some View {
        HStack{
            AvatarView(avatarIndex: Int.random(in: 0...9))
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
        .offset(x: offset)
        .gesture(dragGesture)
    }
    
    private var dragGesture: some Gesture {
        DragGesture()
            .updating($updatingOffset){ value, out, _ in
                DispatchQueue.main.async {
                    if value.translation.width <= 0 {
                        if updatingOffset < maxOffset{
                            offset = maxOffset
                        }else{
                            offset = updatingOffset
                        }
                    }
                }
            }
            .onChanged { value in
            }
            .onEnded { value in
            }
    }
}

struct RecentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessageView(message: RecentMessage(title: "铁路", recentMessage: "最近消息", date: "7:23", cover: "video.fill.badge.plus",mutex: true))
    }
}
