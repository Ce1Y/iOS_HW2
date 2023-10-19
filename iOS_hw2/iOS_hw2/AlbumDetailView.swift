//
//  SingerDetail.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import SwiftUI
//此畫面為專輯的介紹
struct AlbumDetailView: View {
    @Binding var singer: String
    @Binding var album: String
    @Binding var description: String
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
                .frame(height: 100)
            Image(album)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .navigationTitle(singer)
                .navigationBarTitleDisplayMode(.inline)
            Text(album)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            ScrollView {
                Text(description)
                    .font(.system(size: 20))
                    .padding()
            }
        }
    }
}

#Preview {
    NavigationStack {
        AlbumDetailView(singer: .constant("歌手"), album: .constant("范特西"), description: .constant("專輯簡介"))
    }
}


