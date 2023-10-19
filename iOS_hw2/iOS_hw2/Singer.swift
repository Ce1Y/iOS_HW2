//
//  Singer.swift
//  iOS_hw2
//
//  Created by user06 on 2023/10/19.
//

import Foundation

struct Singer {
    let name: String
    
    let JayChouDesc = "周杰倫（英語：Jay Chou；1979年1月18日—），臺灣創作男歌手、鋼琴家、詞曲作家、唱片製片人。2000年周杰倫推出了首張專輯《杰倫》，他的音樂遍及亞太區和西方國家的華裔社群，是華語樂壇極具影響力的音樂人，有「亞洲流行天王」之美譽，並獲得了許多重要音樂獎項，包括15座臺灣金曲獎和2座MTV亞洲大獎，周杰倫也為其他歌手寫歌。2003年他登上亞洲版《時代》雜誌的封面，其後開展了六個世界巡演。 2009年獲美國CNN評選為亞洲最具影響力的二十五位人物之一。2022年推出的專輯 《最偉大的作品》 ，奪下IFPI認證全球最暢銷專輯冠軍。周杰倫在電影《頭文字D》中開始了他的電影事業；他從此涉足許多其他的電影企劃。周杰倫也管理他專屬唱片和經紀公司杰威爾音樂。2011年首度進入好萊塢，飾演《青蜂俠》之助理Kato；2016年在電影《出神入化2》中扮演小李。"
    let MaydayDesc = "五月天（英語：MayDay） 是於1999年出道的臺灣樂團，由主唱阿信、團長暨吉他手怪獸、吉他手石頭、貝斯手瑪莎和鼓手冠佑共五人組成；除冠佑外，其餘四人皆畢業自臺北市國立臺灣師大附中。樂團前身為「So Band」樂團，於1997年3月29日改為現名，其名稱取自瑪莎在BBS的代號「MayDay」。五月天自1999年7月7日正式出道，現已發行了9張錄音室專輯、4張精選輯（其中2張分別為在中國大陸與日本出道發行）和數張演唱會專輯。出道後共計八次入圍、其中四次奪下金曲獎「最佳樂團獎」。"
    let JJLinDesc = "林俊傑（英語：Wayne Lim Jun Jie，藝名：JJ Lin），新加坡華裔歌手、詞曲作家、音樂製作人，曾拿下金曲獎最佳新人獎以及兩屆金曲獎最佳男歌手。2003年，發行首張創作專輯《樂行者》，之後憑藉2004年的專輯《第二天堂》中〈江南〉一曲成名，隨後的〈小酒窩〉、〈曹操〉、〈她說〉等歌曲亦造成迴響。2014年，以專輯《因你而在》獲得第25屆金曲獎最佳國語男歌手獎。2016年，再以專輯《和自己對話》奪得第27屆金曲獎最佳國語男歌手獎及演唱類最佳作曲人獎。"
    let AMeiDesc = "古歷來·阿密特（卑南語：Kulilay Amit），漢名張惠妹，暱稱阿妹，臺灣女歌手及音樂製作人，出身自臺東縣卑南鄉大巴六九部落（卑南族）。1996年底以首張專輯《姊妹》正式出道，在華語流行樂壇享有極崇高的影響力與地位，被視為「華語流行樂壇天后」之一 ，並在華語地區享有「妹神」美譽。出道至今已發行19張個人專輯。曾以專輯《真實》（2001年）、《阿密特》（2009年）、《偏執面》（2014年），3次獲得金曲獎最佳國語女歌手獎。她至今售出約5500萬餘張唱片銷量，舉辦330餘場個人演唱會/世界巡迴售票演唱會，歷次演唱會累積逾700萬觀看人數，為華語女歌手唱片銷量及演唱會場次紀錄、觀看人數紀錄保持人，並在華語流行音樂社群中享有非常崇高的聲譽，更是媒體、音樂人及華人世界公認的「華語樂壇天后」，亦受封為「國寶級歌手」。"
    let MPDesc = "MP魔幻力量（英語：Magic Power），臺灣流行樂團，為台灣首組雙主唱男子樂團。由主唱廷廷、主唱嘎嘎、DJ鼓鼓、吉他手雷堡、貝斯手兼團長凱開、鼓手阿翔組成。其團名取自第一首單曲〈私奔到月球2008〉詞中的「眼神的Magic Power」（簡稱MP，常與中文譯名魔幻力量併稱）。粉絲名為MPF，於2009年12月29日出道。"
    
//  當該fucntion被呼叫時，根據傳入的singer，回傳該歌手的簡介
    func desc() -> String {
        switch name {
        case "周杰倫":
            return JayChouDesc
        case "五月天":
            return MaydayDesc
        case "林俊傑":
            return JJLinDesc
        case "張惠妹":
            return AMeiDesc
        case "MP魔幻力量":
            return MPDesc
        default:
            return ""
        }
    }
    
    func url() -> Array<String> {
        switch name {
        case "周杰倫":
            return ["https://www.youtube.com/channel/UC8CU5nVhCQIdAGrFFp4loOQ",
                    "https://www.facebook.com/jay/",
                    "https://www.instagram.com/jaychou/?hl=zh-tw"]
        case "五月天":
            return ["https://www.youtube.com/@binmusictaipei",
                    "https://www.facebook.com/imayday555/",
                    "https://www.instagram.com/imayday55555/"]
        case "林俊傑":
            return ["https://www.youtube.com/channel/UCd91HSXKhsIv8PIjNrDByHQ",
                    "https://www.facebook.com/JJLin/",
                    "https://www.instagram.com/jjlin/"]
        case "張惠妹":
            return ["https://www.youtube.com/user/meientertainmentltd",
                    "https://www.facebook.com/aMEI.feat.AMIT/",
                    "https://www.instagram.com/amit_feat_amei/"]
        case "MP魔幻力量":
            return ["https://www.youtube.com/@binmusictaipei",
                    "https://www.facebook.com/magicpowertw/?locale=zh_TW",
                    "https://www.instagram.com/mp_magicpower/"]
        default:
            return [""]
        }
    }
}
