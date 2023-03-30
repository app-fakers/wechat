//
//  ContactsView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/29.
//

import SwiftUI

struct ContactsView: View {
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
            VStack{
                ContactsCategoryView(avatarName: "person.fill.badge.plus", color: Color(hex: "ED9541"), title: "新的朋友")
                ContactsCategoryView(avatarName: "message.and.waveform.fill", color: Color(hex: "ED9541"), title: "仅聊天的朋友")
                ContactsCategoryView(avatarName: "person.2.fill", color: Color(hex: "43B55C"), title: "群聊")
                ContactsCategoryView(avatarName: "tag.fill", color: Color(hex: "2778E4"), title: "标签")
                ContactsCategoryView(avatarName: "person.text.rectangle.fill", color: Color(hex: "2778E4"), title: "公众号")
                ContactsCategoryView(avatarName: "person.crop.square.filled.and.at.rectangle.fill", color: Color(hex: "3176CB"), title: "企业微信联系人")
            }
        }
        .toolbar {
            Button {
                isPopover = true
            } label: {
                Image(systemName: "person.badge.plus")
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

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
