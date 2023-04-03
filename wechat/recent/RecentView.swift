//
//  RecentView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct RecentView: View {
    @EnvironmentObject var db: Db
    @State var isPopover = false
    @State var searchText = ""
    @FocusState var isSearchFoucsed
    @State var isOnlineShow = false
    var body: some View {
        List{
            Section {
                VStack {
                    HStack{
                        TextField("搜索",text: $searchText)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .focused($isSearchFoucsed)
                            .background{
                                Color.white.opacity(0.7)
                            }
                            .cornerRadius(6)
                            .animation(.easeInOut, value: isSearchFoucsed)
                        if isSearchFoucsed{
                            Button {
                                isSearchFoucsed = false
                            } label: {
                                Text("取消")
                                    .animation(.easeInOut, value: isSearchFoucsed)
                            }

                        }
                    }
                    .padding(.top, 10)
                    OnlineDeviceStatusView(isOnlineShow: $isOnlineShow)
                        .padding(.vertical, 10)
                }
            }
            .listRowInsets(EdgeInsets())
            .padding(.horizontal)
            .padding(.vertical, 3)
            .background {
                Color.gray.opacity(0.1)
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))//重点在这句话
            ForEach(db.recentMessages){item in
                if !item.hidden {
                    MessageItemVie(item: item)
                }
            }
        }
        .sheet(isPresented: $isOnlineShow) {
            NavigationView {
                OnlineDevicesView()
            }
        }
        .listStyle(.inset)
        .toolbar {
            Button {
                isPopover = true
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(.black)
            }
            .popover(isPresented: $isPopover) {
                VStack{
                    Text("添加")
                }
            }
        }
    }
    
    func MessageItemVie(item: RecentMessage) -> some View {
        ZStack {
            RecentMessageView(message: item)
            NavigationLink(destination: Text("详情")
                .onAppear{
                    db.readed(target: item)
                }, label: {}).opacity(0)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(content: {
            if item.onTop{
                Color.gray.opacity(0.1)
            }
        })
        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
            Button(role: .destructive) {
                withAnimation(.spring()) {
                    db.hidden(target: item)
                }
            } label: {
                Text("删除")
            }
            .tint(.red)
            Button {
                withAnimation(.spring()) {
                    db.hidden(target: item)
                }
            } label: {
                Text("不显示")
                    .background {
                        Color.yellow
                    }
            }
            .tint(.orange)
            Button {
                db.readed(target: item)
            } label: {
                Text("标为已读")
                    .background {
                        Color.yellow
                    }
            }
            .tint(.blue)
        }
        .listRowInsets(EdgeInsets())
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Db())
    }
}
