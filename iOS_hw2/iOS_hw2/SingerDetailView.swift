//
//  SingerDetail.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/19.
//

import SwiftUI

struct SingerDetailView: View {
    var singer: Singer
    @State var opacity: Double = 0.0
    
    var body: some View {
        VStack(alignment: .leading) {
//            畫面上方的歌手頭像及歌手的社群網站鏈結
            HStack(alignment: .top) {
                Image(singer.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .navigationTitle(singer.name)
                    .padding()
                List {
//                    Youtube鏈結
                    Label(
                        title: {
                            Link("Youtube", destination: URL(string: singer.url()[0])!)
                                .opacity(opacity)
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        opacity = 1.0
                                    }
                                }
                                
                        },
                        icon: {
                            Image("youtube")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        })
//                    Facebook鏈結
                    Label(
                        title: {
                            Link("Facebook", destination: URL(string: singer.url()[1])!)
                                .opacity(opacity)
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        opacity = 1.0
                                    }
                                }
                        },
                        icon: {
                            Image("facebook")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        })
//                    Instagram鏈結
                    Label(
                        title: {
                            Link("Instagram", destination: URL(string: singer.url()[2])!)
                                .opacity(opacity)
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        opacity = 1.0
                                    }
                                }
                        },
                        icon: {
                            Image("instagram")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                        })
                }
                .listStyle(.inset)
            }
//            畫面下方的歌手介紹
            VStack(alignment: .leading) {
                Text(singer.name)
                    .font(.largeTitle)
                    .padding(.bottom, 1)
                ScrollView {
                    Text(singer.desc())
                }
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        SingerDetailView(singer: Singer(name: "周杰倫"))
    }
}
