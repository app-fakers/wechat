//
//  ContentView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct ContentView: View {
    @StateObject var db = Db()
    @State var selectedView = 0
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedView){
                NavigationView {
                    RecentView()
                        .navigationTitle("微信")
                        .navigationBarTitleDisplayMode(.inline)
                        .environmentObject(db)
                }
                .tabItem {
                    Label("微信", systemImage: "message")
//                    VStack{
//                        Image(systemName: "message")
//                        Text("微信")
//                    }
                }
                .tag(0)
                NavigationView {
                    ContactsView()
                        .navigationTitle("通讯录")
                        .navigationBarTitleDisplayMode(.inline)
                        .environmentObject(db)
                }
                .tabItem {
                    Label("通讯录", systemImage: "person.wave.2")
                }
                .tag(1)
                
                NavigationView {
                    DiscoveryView()
                }
                .tabItem{
                    Label("发现", systemImage: "safari")
                }
                .tag(2)
                
                NavigationView {
                    MineView()
                }
                .tabItem {
                    Label("我", systemImage: "person")
                }
                .tag(3)
            }
            .background {
                Color.gray.opacity(0.1)
            }
        }
    }
    
    var title: String{
        switch(selectedView){
        case 0: return "微信";
        case 1: return "通讯录";
        case 2: return "发现";
        default:
            return "";
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
