//
//  SongList.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import SwiftUI
// 第二畫面的所有歌手介紹
struct SongList: View {
    let songs = [
        Song(singer: "周杰倫"),
        Song(singer: "五月天"),
        Song(singer: "林俊傑"),
        Song(singer: "張惠妹"),
        Song(singer: "MP魔幻力量")
    ]
    @Binding var name : String
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List {
                    Section {
                        ForEach(songs) { song in
                            NavigationLink (
                                destination: SingerDetailView(singer: Singer(name: song.singer)),
                                label: {
                                    SongRow(song: song)
                                })
                        }
                    }
                }
                .listStyle(.plain)
                Spacer()
            }
            .navigationTitle("歌手")
        }
    }
}

#Preview {
    SongList(name: .constant("歌手名稱"))
}
