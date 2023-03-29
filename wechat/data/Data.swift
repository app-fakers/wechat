//
//  Data.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import Foundation

var recentMessages: [RecentMessage] = [
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",cover:"train.side.front.car"),
]

struct RecentMessage: Identifiable{
    var id = UUID().uuidString
    var title : String
    var recentMessage : String
    var date = Date()
    var cover : String
}
