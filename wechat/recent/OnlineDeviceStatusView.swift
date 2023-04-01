//
//  OnlineDeviceStatusView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/4/1.
//

import SwiftUI


struct OnlineDeviceStatusView: View{
    @Binding var isOnlineShow: Bool
    var body: some View{
        ZStack {
            HStack{
                Image(systemName: "macbook.and.iphone")
                Text("已在其他2个设备上登录微信")
                    .font(.subheadline)
                Spacer()
            }
            .onTapGesture(perform: {
                isOnlineShow = true
            })
        }
    }
}

struct OnlineDeviceStatusView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineDeviceStatusView(isOnlineShow: .constant(false))
    }
}
