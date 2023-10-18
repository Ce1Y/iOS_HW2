//
//  Album.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/18.
//

import Foundation

struct Album {
    var singer: String
    
    let albumJayChou = ["范特西", "葉惠美", "七里香", "依然范特西", "我很忙", "魔杰座", "哎呦不錯哦", "周杰倫的床邊故事", "最偉大的作品"]
    let albumMayday = ["五月天第一張創作專輯", "愛情萬歲", "人生海海", "時光機", "神的孩子都在跳舞", "為愛而生", "後青春期的詩", "第二人生", "自傳"]
    let albumJJLin = ["第二天堂", "曹操", "JJ陸", "學不會", "因你而在", "新地球", "和自己對話", "偉大的渺小", "倖存者 • 如你"]
    let albumAMei = ["偷故事的人", "阿密特2", "偏執面", "你在看我嗎", "阿密特", "Star", "我要快樂？", "勇敢", "發燒"]
    let albumMP = ["不按牌理出牌", "射手", "戰神"]
    let nothing : Array<String> = []
    
    
    func album() -> Array<String> {
        switch singer {
        case "周杰倫":
            return albumJayChou
        case "五月天":
            return albumMayday
        case "林俊傑":
            return albumJJLin
        case "張惠妹":
            return albumAMei
        case "MP魔幻力量":
            return albumMP
        default:
            return nothing
        }
    }
    
}
