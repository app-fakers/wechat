//
//  ContentView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 0
    var body: some View {
        TabView(selection: $selectedView){
            NavigationStack {
                RecentView()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarTitle(title)
            }
            .tabItem {
                VStack{
                    Image(systemName: "message")
                    Text("微信")
                }
            }
            .tag(0)
            
            NavigationStack {
                ContactsView()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarTitle(title)
            }
            .tabItem {
                VStack{
                    Image(systemName: "person.wave.2")
                    Text("通讯录")
                }
            }
            .tag(1)
            NavigationStack {
                DiscoveryView()
            }
            .tabItem{
                VStack{
                    Image(systemName: "safari")
                    Text("发现")
                }
            }
            .tag(2)
            NavigationStack{
                MineView()
            }
            .tabItem {
                VStack{
                    Image(systemName: "person")
                    Text("我")
                }
            }
            .tag(3)
        }
        .background {
            Color.gray
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
