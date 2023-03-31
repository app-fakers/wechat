//
//  OnlineDeviceView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/31.
//

import SwiftUI

struct OnlineDevicesView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State var current: String?
    var body: some View {
        ScrollView(showsIndicators: false){
            OnlineDeviceView(icon: "laptopcomputer", title: "Mac微信", subtitle: "MacBook Pro", current: $current){
                VStack(alignment: .center){
                    HStack{
                        Spacer()
                        OnlineDeviceAction(icon: "bell", name: "手机通知已开")
                        Spacer()
                        OnlineDeviceAction(icon: "exclamationmark.lock", name: "未锁定")
                        Spacer()
                        OnlineDeviceAction(icon: "folder", name: "传文件")
                        Spacer()
                    }
                    .padding(.vertical, 30)
                    
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                        Text("自动登录该设备")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Divider()
                    
                    Button {
                    } label: {
                        VStack(alignment: .center) {
                            Text("退出登录")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            OnlineDeviceView(icon: "ipad.landscape", title: "iPad微信", subtitle: "iPad Pro", current: $current){
                VStack(alignment: .center){
                    HStack{
                        Spacer()
                        OnlineDeviceAction(icon: "folder", name: "传文件")
                        Spacer()
                    }
                    .padding(.vertical, 30)
                    Divider()
                    
                    Button {
                    } label: {
                        VStack(alignment: .center) {
                            Text("退出登录")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
        }
        .navigationTitle("已登录设备")
        .navigationBarTitleDisplayMode(.inline)
        .background(content: {
            Color.gray.opacity(0.01)
        })
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct OnlineDeviceAction: View{
    var icon: String
    var name: String
    var body: some View{
        VStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .overlay {
                    Circle()
                        .frame(width: 50, height: 50)
                        .opacity(0.1)
                }
                .padding(.all, 10)
            Text(name)
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
        .frame(width: 80)
        
    }
}

struct OnlineDeviceView<ContentView:View>: View{
    var icon: String
    var title: String
    var subtitle: String
    @Binding var current: String?
    var content: () -> ContentView
    var body: some View{
        VStack(alignment: .leading){
            VStack {
                HStack(alignment: .center){
                    Image(systemName: icon)
                        .padding(.leading, 4)
                    VStack(alignment: .leading){
                        Text(title)
                            .font(.title3)
                        Text(subtitle)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Button {
                        withAnimation {
                            if current != nil && current! == title{
                                current = nil
                            }else{
                                current = title
                            }
                        }
                    } label: {
                        Image(systemName: isCurrent ? "chevron.up" : "chevron.down")
                    }
                }
                .padding()
            }
            if isCurrent{
                VStack {
                    Divider()
                    content()
                        .padding()
                }
                .animation(.easeOut, value: current)
            }
        }
        
        .background {
            Color.gray.opacity(0.05)
        }
        .cornerRadius(10)
        .padding(.horizontal, 30)
        .padding(.vertical, 4)
    }
    
    var isCurrent: Bool{
        return current != nil && current! == title
    }
    
}

struct OnlineDeviceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OnlineDevicesView()
        }
        .accentColor(.gray)
    }
}
