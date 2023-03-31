//
//  Data.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import Foundation

var recentMessages: [RecentMessage] = [
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "7:32", cover:"bus.doubledecker", onTop: true),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "7:32", cover:"train.side.front.car", onTop: true),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "7:32", cover:"bus.doubledecker", onTop: true),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "7:32", cover:"train.side.front.car", mutex: true),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "7:32", cover:"bus.doubledecker", mutex: true),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "7:32", cover:"train.side.front.car", mutex: true),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "昨天", cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "昨天", cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "前天", cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "前天", cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "前天", cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "星期一", cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "星期一", cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "3-21", cover:"train.side.front.car"),
    RecentMessage(title:"实时公交",recentMessage:"公交线路查询",date: "3-20", cover:"bus.doubledecker"),
    RecentMessage(title:"铁路12306",recentMessage:"成功订票",date: "1-23", cover:"train.side.front.car"),
]

struct RecentMessage: Identifiable{
    var id = UUID().uuidString
    var title : String
    var avatarIndex = Int.random(in: 0...9)
    var avatarColorIndex = Int.random(in: 0...9)
    var recentMessage : String
    var date : String
    var cover : String
    var onTop : Bool = false
    var mutex : Bool = false
}
