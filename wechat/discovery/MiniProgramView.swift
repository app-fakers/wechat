//
//  MiniProgramView.swift
//  wechat
//
//  Created by 唐毓俊 on 2023/4/4.
//

import SwiftUI

struct MiniProgramView: View {
    @State var isPopover = false
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView {
            Text("xxx小程序")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(spacing: 0) {
                            Button(action: {
                                isPopover = true
                            }) {
                                HStack(spacing: 2) {
                                    Circle().frame(width: 6)
                                    Circle().frame(width: 10)
                                    Circle().frame(width: 6)
                                }
                                .foregroundColor(.black)
                            }
                            Divider().frame(width: 1).padding(.horizontal, 8)
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Circle().frame(width: 8)
                                    .foregroundColor(.black)
                                    .padding(2)
                                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white))
                                    .padding(2)
                                    .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.black))
                            }
                        }
                        .padding(6)
                        .background(
                            Capsule().foregroundColor(.gray.opacity(0.1))
                        )
                    }
                }
                .navigationTitle("xxx小程序")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MiniProgramView_Previews: PreviewProvider {
    static var previews: some View {
        MiniProgramView()
    }
}
