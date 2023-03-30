//
//  ContactsAvatarView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/3/30.
//

import SwiftUI

struct ContactsCategoryAvatarView: View {
    var avatarIndex = Int.random(in: 0...9)
    var avatarColorIndex = Int.random(in: 0...9)
    var body: some View {
        SystemAvatarView(name: <#T##String#>, color: <#T##Color#>)
    }
}

struct ContactsAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsCategoryAvatarView()
    }
}
