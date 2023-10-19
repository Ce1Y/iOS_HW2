//
//  SingerDetail.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/19.
//

import SwiftUI

struct SingerDetailView: View {
    var singer: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(singer)
                    .resizable()
                    .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .navigationTitle(singer)
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        SingerDetailView(singer: "周杰倫")
    }
}
