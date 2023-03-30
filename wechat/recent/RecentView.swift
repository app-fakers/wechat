//
//  RecentView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct RecentView: View {
    @State var isPopover = false
    @State var searchText = ""
    @FocusState var isSearchFoucsed
    var body: some View {
        ScrollView(showsIndicators: false){
            HStack{
                TextField("搜索",text: $searchText)
                    .focused($isSearchFoucsed)
                    .padding()
                    .background{
                        Color.gray.opacity(0.1)
                    }
                    .cornerRadius(6)
                    .padding(.horizontal)
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
            ForEach(recentMessages){item in
                RecentMessageView(message: item)
                    .padding(.top, 4)
                    .background {
                        if item.onTop{
                            Color.gray.opacity(0.1)
                        }
                    }
            }
            Spacer()
        }
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
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
