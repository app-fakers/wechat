//
//  Data.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import Foundation



class Db: ObservableObject{
    @Published var recentMessages: [RecentMessage] = [
//        刘一 陈二 张三 李四 王五 赵六 孙七 周八 吴九 郑十 张伟、王伟、王芳、李伟、李娜、张敏、李静、王静、刘伟和王秀英
        RecentMessage(title:"张伟",pinyin:"ZHANGWEI",recentMessage:"你好",date: "7:32", cover:"bus.doubledecker", onTop: true),
        RecentMessage(title:"王伟",pinyin:"WANGWEI",recentMessage:"你好",date: "昨天", cover:"bus.doubledecker", onTop: true),
        RecentMessage(title:"王芳",pinyin:"WANGFANG",recentMessage:"你好",date: "星期二", cover:"bus.doubledecker", onTop: true, mutex: true),
        RecentMessage(title:"李伟",pinyin:"LIWEI",recentMessage:"你好",date: "5:52", cover:"bus.doubledecker"),
        RecentMessage(title:"李娜",pinyin:"LINA",recentMessage:"你好",date: "5:43", cover:"bus.doubledecker"),
        RecentMessage(title:"张敏",pinyin:"ZHANGMIN",recentMessage:"你好",date: "昨天", cover:"bus.doubledecker", mutex: true),
        RecentMessage(title:"李静",pinyin:"LIJING",recentMessage:"你好",date: "昨天", cover:"bus.doubledecker"),
        RecentMessage(title:"王静",pinyin:"WANGJING",recentMessage:"你好",date: "前天", cover:"bus.doubledecker"),
        RecentMessage(title:"刘伟",pinyin:"LIWEI",recentMessage:"你好",date: "前天", cover:"bus.doubledecker", mutex: true),
        RecentMessage(title:"王秀英",pinyin:"WANGXIUYING",recentMessage:"你好",date: "前天", cover:"bus.doubledecker", mutex: true),
        RecentMessage(title:"刘一",pinyin:"LIUYI",recentMessage:"你好",date: "星期一", cover:"bus.doubledecker"),
        RecentMessage(title:"陈二",pinyin:"CHENER",recentMessage:"你好",date: "星期一", cover:"bus.doubledecker"),
        RecentMessage(title:"张三",pinyin:"ZHANGSAN",recentMessage:"你好",date: "1-23", cover:"bus.doubledecker"),
        RecentMessage(title:"李四",pinyin:"LISI",recentMessage:"你好",date: "1-13", cover:"bus.doubledecker"),
        RecentMessage(title:"王五",pinyin:"WANGWU",recentMessage:"你好",date: "2022-12-03", cover:"bus.doubledecker"),
        RecentMessage(title:"赵六",pinyin:"ZHAOLIU",recentMessage:"你好",date: "2022-12-03", cover:"bus.doubledecker"),
        RecentMessage(title:"孙七",pinyin:"SHUNQI",recentMessage:"你好",date: "2022-12-03", cover:"bus.doubledecker"),
        RecentMessage(title:"周八",pinyin:"ZHOUBA",recentMessage:"你好",date: "2022-12-03", cover:"bus.doubledecker"),
        RecentMessage(title:"吴九",pinyin:"WUJIU",recentMessage:"你好",date: "2022-12-03", cover:"bus.doubledecker"),
        RecentMessage(title:"郑十",pinyin:"ZHENGSHI",recentMessage:"你好",date: "2022-12-03", cover:"bus.doubledecker"),
//        RecentMessage(title:"爱学术",pinyin:"AIXUESHU",recentMessage:"文章查询",date: "7:32", cover:"bus.doubledecker"),
//        RecentMessage(title:"Apple",pinyin:"APPLE",recentMessage:"iOS17发布",date: "7:32", cover:"bus.doubledecker"),
//        RecentMessage(title:"锤子科技",pinyin:"CHUIZIKEJI",recentMessage:"锤子T3新品发布会",date: "7:32", cover:"train.side.front.car"),
//        RecentMessage(title:"IT之家",pinyin:"ITZHIJIA",recentMessage:"iOS17发布",date: "7:32", cover:"bus.doubledecker"),
//        RecentMessage(title:"孔夫子旧书网",pinyin:"KONGFUZHIJIUSHUWANG",recentMessage:"购书成功",date: "7:32", cover:"train.side.front.car", mutex: true),
//        RecentMessage(title:"SeaTable",pinyin:"SEATABLE",recentMessage:"使用教程",date: "7:32", cover:"bus.doubledecker", mutex: true),
//        RecentMessage(title:"铁路12306",pinyin:"TIELU12306",recentMessage:"成功订票",date: "7:32", cover:"train.side.front.car", mutex: true),
//        RecentMessage(title:"四川省图书馆",pinyin:"SICHUANSHENGTUSHUGUAN",recentMessage:"入馆预定",date: "昨天", cover:"bus.doubledecker"),
//        RecentMessage(title:"微信运动",pinyin:"WEIXINYUNDONG",recentMessage:"昨日微信步数排行第一",date: "昨天", cover:"train.side.front.car"),
//        RecentMessage(title:"微信支付",pinyin:"WEIXINZHIFU",recentMessage:"",date: "前天", cover:"bus.doubledecker"),
//        RecentMessage(title:"中国移动",pinyin:"ZHONGGUOYIDONG",recentMessage:"当前余额:欠费0.01",date: "前天", cover:"train.side.front.car"),
//        RecentMessage(title:"实时公交",pinyin:"SHISHIGONGJIAO",recentMessage:"公交线路查询",date: "前天", cover:"bus.doubledecker"),
//        RecentMessage(title:"重庆移动",pinyin:"CHOGNQIYIDONG",recentMessage:"当前余额:欠费0.01",date: "星期一", cover:"train.side.front.car"),
//        RecentMessage(title:"中国联通",pinyin:"ZHONGGUOLIANTONG",recentMessage:"当前套餐:哔哩哔哩22卡",date: "星期一", cover:"bus.doubledecker"),
//        RecentMessage(title:"中国石化",pinyin:"ZHONGGUOSHIHUA",recentMessage:"",date: "3-21", cover:"train.side.front.car"),
//        RecentMessage(title:"腾讯企业邮箱",pinyin:"TENGXUNQIYEYOUXIANG",recentMessage:"[新邮件]提醒",date: "3-20", cover:"bus.doubledecker"),
//        RecentMessage(title:"腾讯视频",pinyin:"TENGXUNSHIP",recentMessage:"会员过期",date: "1-23", cover:"train.side.front.car"),
    ]

}

struct RecentMessage: Identifiable{
    var id = UUID().uuidString
    var title : String
    var pinyin: String
    var avatarIndex = Int.random(in: 0...9)
    var avatarColorIndex = Int.random(in: 0...9)
    var recentMessage : String
    var date : String
    var cover : String
    var onTop : Bool = false
    var mutex : Bool = false
}
