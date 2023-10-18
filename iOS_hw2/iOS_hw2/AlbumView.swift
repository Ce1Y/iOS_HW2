//
//  AlbumView.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import SwiftUI
// 第一個畫面的下方專輯推薦區之模板
struct AlbumView: View {
    let album: String
    
    var body: some View {
        VStack {
            Image(album)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipped()
            Text(album)
                .font(.system(size: 20))
        }
    }
}

#Preview {
    AlbumView(album: "七里香")
}
