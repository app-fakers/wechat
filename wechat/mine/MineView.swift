//
//  MineView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct MineView: View {
    var body: some View {
        List{
            header()
            Section() {
                NavigationLink {
                    Text("服务")
                } label: {
                    item("zhifu", "服务")
                }
                NavigationLink {
                    Text("收藏")
                } label: {
                    item("shoucang", "收藏")
                }
                NavigationLink {
                    Text("卡包")
                } label: {
                    item("kabao", "卡包")
                }
                NavigationLink {
                    Text("表情")
                } label: {
                    item("biaoqing", "表情")
                }
            }
            
            
            Section() {
                NavigationLink {
                    Text("设置")
                } label: {
                    HStack{
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .scaledToFit()
                            .foregroundColor(.blue)
                        Text("设置")
                        Spacer()
                    }
                    .frame(height: 34)
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
        .frame(height: 34)
    }
    
    @ViewBuilder
    func header() -> some View{
        HStack(alignment: .center){
            Image("avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .cornerRadius(6)
            VStack(alignment: .leading){
                Text("NS-CN")
                Text("微信号：NS-CN")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                HStack{
                    Text(" + 状态")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.horizontal, 5)
                        .padding(.vertical, 2)
                        .background(content: {
                            RoundedRectangle(cornerSize: .init(width: 20, height: 10))
                                .stroke(style: .init(lineWidth: 1))
                                .cornerRadius(6)
                                .opacity(0.2)
                        })
                }
            }
            .padding(.leading, 15)
            Spacer()
            HStack {
                Image(systemName: "qrcode")
                Image(systemName: "chevron.right")
            }
            .foregroundColor(.gray)
        }
        .padding(.top, 40)
        .frame(height: 180)
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView()
    }
}
