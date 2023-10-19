//
//  ContentView.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import SwiftUI

struct ContentView: View {
    @State var singerNow: String = ""
    @State var albumList: Array<String> = []
    @State var albumDescription: Array<String> = []
    @State var title: String = "首頁"
    let singers = ["周杰倫", "五月天", "林俊傑", "張惠妹", "MP魔幻力量"]
    
    var body: some View {
        NavigationStack {
//          分成兩頁，第一頁為推薦專輯，第二頁為所有歌手的介紹
            TabView {
                VStack(alignment: .leading) {
//                  此處的ScrollView為畫面上方一排的歌手頭像
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(singers, id: \.self) { singer in
                                VStack {
                                    Image(singer)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:75, height: 75)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .padding(5)
                                        .onTapGesture {
                                            singerNow = singer
                                            albumList = Album.album(Album(singer: singerNow))()
                                            albumDescription =
                                                AlbumDescription.description(AlbumDescription(singer: singerNow))()
                                        }
                                    Text(singer)
                                        .font(.system(size: 12))
                                }
                            }
                        }.padding()
                    }
//                  用以分割上方的歌手列表與下方的推薦區域
                    Rectangle()
                        .frame(height: 1)
                    Text("為您推薦 : \(singerNow)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
//                  此處的ScrollView為畫面下方的推薦專輯區域
                    let columns = [GridItem(spacing: 5), GridItem()]
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 25) {
                            ForEach(albumList.indices, id: \.self) { item in
                                NavigationLink(
                                    destination: AlbumDetailView(singer: $singerNow,
                                                              album: $albumList[item],
                                                              description: $albumDescription[item]),
                                    label: {
                                        AlbumView(album: albumList[item]
                                        )
                                    })
                            }
                        }
                    }
                }.tabItem {
                    Label("Home", systemImage: "house")
                }
//              此為歌手清單的頁面
                SongList(name: $singerNow)
                    .tabItem {
                        Label("Singer", systemImage: "list.bullet")
                    }
            }
            .navigationTitle($title)
            .toolbarRole(.editor)
        }
    }
}


#Preview {
    ContentView()
}
