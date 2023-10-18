//
//  SingerDetail.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import SwiftUI
//此畫面為專輯的介紹
struct SingerDetail: View {
    @Binding var singer: String
    @Binding var album: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(album)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .navigationTitle(singer)
                .navigationBarTitleDisplayMode(.inline)
            Text(album)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}


