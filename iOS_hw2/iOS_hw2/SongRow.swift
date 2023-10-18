//
//  SongRow.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import SwiftUI

struct SongRow: View {
    let song: Song
    
    var body: some View {
        HStack {
            Image(song.singer)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipped()
            VStack {
                Text(song.singer)
                    .padding()
            }
        }
    }
}

#Preview {
    SongRow(song: Song(singer: "周杰倫"))
}

