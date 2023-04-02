//
//  RecentMessageDetailView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/4/2.
//

import SwiftUI

struct RecentMessageDetailView: View {
    @Binding var item: RecentMessage
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecentMessageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecentMessageDetailView(item: .constant(RecentMessage(title:"张伟",pinyin:"ZHANGWEI",recentMessage:"你好",date: "7:32", cover:"bus.doubledecker", onTop: true)))
    }
}
