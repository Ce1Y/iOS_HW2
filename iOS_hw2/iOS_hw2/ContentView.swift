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
    let singers = ["周杰倫", "五月天", "林俊傑", "張惠妹", "MP魔幻力量"]
    
    var body: some View {
        NavigationStack {
            TabView {
                VStack(alignment: .leading) {
                    Group {
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
                                            }
                                        Text(singer)
                                            .font(.system(size: 12))
                                    }
                                }
                            }.padding()
                        }
                        Rectangle()
                            .frame(height: 1)
                        Text("為您推薦 : \(singerNow)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding()
                        let columns = [GridItem(spacing: 5), GridItem()]
                        ScrollView {
                            LazyVGrid(columns: columns, spacing: 25) {
                                ForEach(albumList.indices, id: \.self) { item in
                                    NavigationLink {
                                        SingerDetail()
                                    } label: {
                                        AlbumView(album: albumList[item])
                                    }
                                }
                            }
                        }
                    }
                }.tabItem {
                    Label("Home", systemImage: "house")
                }
                SongList()
                    .tabItem {
                        Label("love", systemImage: "heart")
                    }
            }
            .navigationTitle("專輯")
        }
    }
}


#Preview {
    ContentView()
}
