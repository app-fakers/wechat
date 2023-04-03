//
//  DiscoveryView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct DiscoveryView: View {
    var body: some View{
        List {
            Section() {
                NavigationLink {
                    Text("朋友圈")
                } label: {
                    item("pengyouquan", "朋友圈")
                }
                NavigationLink {
                    Text("视频号")
                } label: {
                    item("shipinhao", "视频号")
                }
            }
            
            Section() {
                NavigationLink {
                    Text("摇一摇")
                } label: {
                    item("yaoyiyao", "摇一摇")
                }
                NavigationLink {
                    Text("小程序")
                } label: {
                    item("xiaochengxu", "小程序")
                }
            }
            
            
            Section() {
                NavigationLink {
                    Text("购物")
                } label: {
                    item("gouwu", "购物")
                }
            }
        }
        .listStyle(.grouped)
    }
    
    @ViewBuilder
    func item(_ pic: String, _ title: String) -> some View{
        HStack{
            Image(pic)
                .resizable()
                .frame(width: 20,height: 20)
                .scaledToFit()
            Text(title)
            Spacer()
        }
        .frame(height: 30)
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoveryView()
        }
    }
}
