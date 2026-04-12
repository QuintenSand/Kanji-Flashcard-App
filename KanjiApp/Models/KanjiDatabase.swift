import Foundation

// MARK: - Kanji Database (N5 → N1)
struct KanjiDatabase {

    static let all: [Kanji] = n5 + n4 + n3 + n2 + n1

    // ─────────────────────────────────────────
    // MARK: N5 (85 kanji)
    // ─────────────────────────────────────────
    static let n5: [Kanji] = [
        Kanji(id:"日", meanings:["sun","day"], onyomi:["ニチ","ジツ"], kunyomi:["ひ","か"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"日本", reading:"にほん", meaning:"Japan"),
            KanjiExample(word:"毎日", reading:"まいにち", meaning:"every day")]),
        Kanji(id:"月", meanings:["moon","month"], onyomi:["ゲツ","ガツ"], kunyomi:["つき"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"月曜日", reading:"げつようび", meaning:"Monday"),
            KanjiExample(word:"今月", reading:"こんげつ", meaning:"this month")]),
        Kanji(id:"火", meanings:["fire"], onyomi:["カ"], kunyomi:["ひ"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"火曜日", reading:"かようび", meaning:"Tuesday"),
            KanjiExample(word:"火事", reading:"かじ", meaning:"fire (incident)")]),
        Kanji(id:"水", meanings:["water"], onyomi:["スイ"], kunyomi:["みず"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"水曜日", reading:"すいようび", meaning:"Wednesday"),
            KanjiExample(word:"水泳", reading:"すいえい", meaning:"swimming")]),
        Kanji(id:"木", meanings:["tree","wood"], onyomi:["モク","ボク"], kunyomi:["き","こ"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"木曜日", reading:"もくようび", meaning:"Thursday"),
            KanjiExample(word:"木材", reading:"もくざい", meaning:"lumber")]),
        Kanji(id:"金", meanings:["gold","money"], onyomi:["キン","コン"], kunyomi:["かね","かな"], level:.N5, strokeCount:8, examples:[
            KanjiExample(word:"金曜日", reading:"きんようび", meaning:"Friday"),
            KanjiExample(word:"お金", reading:"おかね", meaning:"money")]),
        Kanji(id:"土", meanings:["earth","soil"], onyomi:["ド","ト"], kunyomi:["つち"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"土曜日", reading:"どようび", meaning:"Saturday"),
            KanjiExample(word:"土地", reading:"とち", meaning:"land")]),
        Kanji(id:"山", meanings:["mountain"], onyomi:["サン"], kunyomi:["やま"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"山田", reading:"やまだ", meaning:"Yamada (surname)"),
            KanjiExample(word:"富士山", reading:"ふじさん", meaning:"Mt. Fuji")]),
        Kanji(id:"川", meanings:["river"], onyomi:["セン"], kunyomi:["かわ"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"川", reading:"かわ", meaning:"river"),
            KanjiExample(word:"小川", reading:"おがわ", meaning:"stream")]),
        Kanji(id:"田", meanings:["rice field"], onyomi:["デン"], kunyomi:["た"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"田んぼ", reading:"たんぼ", meaning:"rice paddy"),
            KanjiExample(word:"田中", reading:"たなか", meaning:"Tanaka (surname)")]),
        Kanji(id:"人", meanings:["person","people"], onyomi:["ジン","ニン"], kunyomi:["ひと"], level:.N5, strokeCount:2, examples:[
            KanjiExample(word:"日本人", reading:"にほんじん", meaning:"Japanese person"),
            KanjiExample(word:"人口", reading:"じんこう", meaning:"population")]),
        Kanji(id:"口", meanings:["mouth"], onyomi:["コウ","ク"], kunyomi:["くち"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"入口", reading:"いりぐち", meaning:"entrance"),
            KanjiExample(word:"出口", reading:"でぐち", meaning:"exit")]),
        Kanji(id:"目", meanings:["eye"], onyomi:["モク","ボク"], kunyomi:["め"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"目的", reading:"もくてき", meaning:"purpose"),
            KanjiExample(word:"目玉", reading:"めだま", meaning:"eyeball")]),
        Kanji(id:"耳", meanings:["ear"], onyomi:["ジ"], kunyomi:["みみ"], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"耳鼻科", reading:"じびか", meaning:"ENT clinic"),
            KanjiExample(word:"耳", reading:"みみ", meaning:"ear")]),
        Kanji(id:"手", meanings:["hand"], onyomi:["シュ","ズ"], kunyomi:["て","た"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"手紙", reading:"てがみ", meaning:"letter"),
            KanjiExample(word:"上手", reading:"じょうず", meaning:"skilled")]),
        Kanji(id:"足", meanings:["foot","leg","enough"], onyomi:["ソク"], kunyomi:["あし","た"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"足りる", reading:"たりる", meaning:"to be enough"),
            KanjiExample(word:"足音", reading:"あしおと", meaning:"footsteps")]),
        Kanji(id:"一", meanings:["one"], onyomi:["イチ","イツ"], kunyomi:["ひと"], level:.N5, strokeCount:1, examples:[
            KanjiExample(word:"一月", reading:"いちがつ", meaning:"January"),
            KanjiExample(word:"一緒", reading:"いっしょ", meaning:"together")]),
        Kanji(id:"二", meanings:["two"], onyomi:["ニ"], kunyomi:["ふた"], level:.N5, strokeCount:2, examples:[
            KanjiExample(word:"二月", reading:"にがつ", meaning:"February"),
            KanjiExample(word:"二人", reading:"ふたり", meaning:"two people")]),
        Kanji(id:"三", meanings:["three"], onyomi:["サン"], kunyomi:["み","みつ"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"三月", reading:"さんがつ", meaning:"March"),
            KanjiExample(word:"三つ", reading:"みっつ", meaning:"three things")]),
        Kanji(id:"四", meanings:["four"], onyomi:["シ"], kunyomi:["よ","よん","よっ"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"四月", reading:"しがつ", meaning:"April"),
            KanjiExample(word:"四つ", reading:"よっつ", meaning:"four things")]),
        Kanji(id:"五", meanings:["five"], onyomi:["ゴ"], kunyomi:["いつ"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"五月", reading:"ごがつ", meaning:"May"),
            KanjiExample(word:"五つ", reading:"いつつ", meaning:"five things")]),
        Kanji(id:"六", meanings:["six"], onyomi:["ロク"], kunyomi:["む","むつ"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"六月", reading:"ろくがつ", meaning:"June"),
            KanjiExample(word:"六つ", reading:"むっつ", meaning:"six things")]),
        Kanji(id:"七", meanings:["seven"], onyomi:["シチ"], kunyomi:["なな","なの"], level:.N5, strokeCount:2, examples:[
            KanjiExample(word:"七月", reading:"しちがつ", meaning:"July"),
            KanjiExample(word:"七夕", reading:"たなばた", meaning:"Tanabata festival")]),
        Kanji(id:"八", meanings:["eight"], onyomi:["ハチ"], kunyomi:["や","やっ"], level:.N5, strokeCount:2, examples:[
            KanjiExample(word:"八月", reading:"はちがつ", meaning:"August"),
            KanjiExample(word:"八つ", reading:"やっつ", meaning:"eight things")]),
        Kanji(id:"九", meanings:["nine"], onyomi:["ク","キュウ"], kunyomi:["ここの"], level:.N5, strokeCount:2, examples:[
            KanjiExample(word:"九月", reading:"くがつ", meaning:"September"),
            KanjiExample(word:"九つ", reading:"ここのつ", meaning:"nine things")]),
        Kanji(id:"十", meanings:["ten"], onyomi:["ジュウ","ジッ"], kunyomi:["とお","と"], level:.N5, strokeCount:2, examples:[
            KanjiExample(word:"十月", reading:"じゅうがつ", meaning:"October"),
            KanjiExample(word:"二十", reading:"はたち", meaning:"twenty / age 20")]),
        Kanji(id:"百", meanings:["hundred"], onyomi:["ヒャク"], kunyomi:[], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"百円", reading:"ひゃくえん", meaning:"100 yen"),
            KanjiExample(word:"三百", reading:"さんびゃく", meaning:"300")]),
        Kanji(id:"千", meanings:["thousand"], onyomi:["セン"], kunyomi:["ち"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"千円", reading:"せんえん", meaning:"1,000 yen"),
            KanjiExample(word:"三千", reading:"さんぜん", meaning:"3,000")]),
        Kanji(id:"万", meanings:["ten thousand"], onyomi:["マン","バン"], kunyomi:[], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"一万円", reading:"いちまんえん", meaning:"10,000 yen"),
            KanjiExample(word:"万年筆", reading:"まんねんひつ", meaning:"fountain pen")]),
        Kanji(id:"円", meanings:["circle","yen"], onyomi:["エン"], kunyomi:["まる"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"円", reading:"えん", meaning:"yen"),
            KanjiExample(word:"円い", reading:"まるい", meaning:"round")]),
        Kanji(id:"年", meanings:["year"], onyomi:["ネン"], kunyomi:["とし"], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"今年", reading:"ことし", meaning:"this year"),
            KanjiExample(word:"来年", reading:"らいねん", meaning:"next year")]),
        Kanji(id:"時", meanings:["time","hour"], onyomi:["ジ"], kunyomi:["とき"], level:.N5, strokeCount:10, examples:[
            KanjiExample(word:"時間", reading:"じかん", meaning:"time"),
            KanjiExample(word:"何時", reading:"なんじ", meaning:"what time")]),
        Kanji(id:"分", meanings:["minute","part","understand"], onyomi:["フン","ブン","ブ"], kunyomi:["わか"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"十分", reading:"じゅっぷん", meaning:"ten minutes"),
            KanjiExample(word:"分かる", reading:"わかる", meaning:"to understand")]),
        Kanji(id:"半", meanings:["half"], onyomi:["ハン"], kunyomi:["なか"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"半分", reading:"はんぶん", meaning:"half"),
            KanjiExample(word:"一時半", reading:"いちじはん", meaning:"1:30")]),
        Kanji(id:"上", meanings:["up","above"], onyomi:["ジョウ","ショウ"], kunyomi:["うえ","あ","のぼ"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"上手", reading:"じょうず", meaning:"skilled"),
            KanjiExample(word:"上", reading:"うえ", meaning:"above")]),
        Kanji(id:"下", meanings:["down","below"], onyomi:["カ","ゲ"], kunyomi:["した","さ","くだ"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"下手", reading:"へた", meaning:"unskilled"),
            KanjiExample(word:"地下", reading:"ちか", meaning:"underground")]),
        Kanji(id:"中", meanings:["middle","inside"], onyomi:["チュウ"], kunyomi:["なか"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"中国", reading:"ちゅうごく", meaning:"China"),
            KanjiExample(word:"中心", reading:"ちゅうしん", meaning:"center")]),
        Kanji(id:"大", meanings:["big","large"], onyomi:["ダイ","タイ"], kunyomi:["おお"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"大学", reading:"だいがく", meaning:"university"),
            KanjiExample(word:"大きい", reading:"おおきい", meaning:"big")]),
        Kanji(id:"小", meanings:["small","little"], onyomi:["ショウ"], kunyomi:["ちい","こ","お"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"小学校", reading:"しょうがっこう", meaning:"elementary school"),
            KanjiExample(word:"小さい", reading:"ちいさい", meaning:"small")]),
        Kanji(id:"本", meanings:["book","origin","root"], onyomi:["ホン"], kunyomi:["もと"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"日本", reading:"にほん", meaning:"Japan"),
            KanjiExample(word:"本棚", reading:"ほんだな", meaning:"bookshelf")]),
        Kanji(id:"国", meanings:["country"], onyomi:["コク"], kunyomi:["くに"], level:.N5, strokeCount:8, examples:[
            KanjiExample(word:"外国", reading:"がいこく", meaning:"foreign country"),
            KanjiExample(word:"国語", reading:"こくご", meaning:"Japanese language")]),
        Kanji(id:"語", meanings:["language","word"], onyomi:["ゴ"], kunyomi:["かた"], level:.N5, strokeCount:14, examples:[
            KanjiExample(word:"日本語", reading:"にほんご", meaning:"Japanese language"),
            KanjiExample(word:"英語", reading:"えいご", meaning:"English language")]),
        Kanji(id:"学", meanings:["study","learn"], onyomi:["ガク"], kunyomi:["まな"], level:.N5, strokeCount:8, examples:[
            KanjiExample(word:"学校", reading:"がっこう", meaning:"school"),
            KanjiExample(word:"学生", reading:"がくせい", meaning:"student")]),
        Kanji(id:"校", meanings:["school"], onyomi:["コウ"], kunyomi:[], level:.N5, strokeCount:10, examples:[
            KanjiExample(word:"学校", reading:"がっこう", meaning:"school"),
            KanjiExample(word:"高校", reading:"こうこう", meaning:"high school")]),
        Kanji(id:"生", meanings:["life","birth","raw"], onyomi:["セイ","ショウ"], kunyomi:["い","う","なま","は"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"先生", reading:"せんせい", meaning:"teacher"),
            KanjiExample(word:"生まれる", reading:"うまれる", meaning:"to be born")]),
        Kanji(id:"先", meanings:["ahead","previous","tip"], onyomi:["セン"], kunyomi:["さき"], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"先生", reading:"せんせい", meaning:"teacher"),
            KanjiExample(word:"先週", reading:"せんしゅう", meaning:"last week")]),
        Kanji(id:"父", meanings:["father"], onyomi:["フ"], kunyomi:["ちち"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"父", reading:"ちち", meaning:"(my) father"),
            KanjiExample(word:"お父さん", reading:"おとうさん", meaning:"father (honorific)")]),
        Kanji(id:"母", meanings:["mother"], onyomi:["ボ"], kunyomi:["はは"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"母", reading:"はは", meaning:"(my) mother"),
            KanjiExample(word:"母国語", reading:"ぼこくご", meaning:"native language")]),
        Kanji(id:"子", meanings:["child"], onyomi:["シ","ス"], kunyomi:["こ"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"子供", reading:"こども", meaning:"child"),
            KanjiExample(word:"女子", reading:"じょし", meaning:"girl / female")]),
        Kanji(id:"女", meanings:["woman","female"], onyomi:["ジョ","ニョ"], kunyomi:["おんな","め"], level:.N5, strokeCount:3, examples:[
            KanjiExample(word:"女性", reading:"じょせい", meaning:"woman"),
            KanjiExample(word:"彼女", reading:"かのじょ", meaning:"she / girlfriend")]),
        Kanji(id:"男", meanings:["man","male"], onyomi:["ダン","ナン"], kunyomi:["おとこ"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"男性", reading:"だんせい", meaning:"man"),
            KanjiExample(word:"男の子", reading:"おとこのこ", meaning:"boy")]),
        Kanji(id:"友", meanings:["friend"], onyomi:["ユウ"], kunyomi:["とも"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"友達", reading:"ともだち", meaning:"friend"),
            KanjiExample(word:"友人", reading:"ゆうじん", meaning:"friend (formal)")]),
        Kanji(id:"何", meanings:["what","how many"], onyomi:["カ"], kunyomi:["なに","なん"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"何", reading:"なに", meaning:"what"),
            KanjiExample(word:"何時", reading:"なんじ", meaning:"what time")]),
        Kanji(id:"今", meanings:["now","present"], onyomi:["コン","キン"], kunyomi:["いま"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"今日", reading:"きょう", meaning:"today"),
            KanjiExample(word:"今週", reading:"こんしゅう", meaning:"this week")]),
        Kanji(id:"来", meanings:["come"], onyomi:["ライ"], kunyomi:["く","き","こ"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"来年", reading:"らいねん", meaning:"next year"),
            KanjiExample(word:"来る", reading:"くる", meaning:"to come")]),
        Kanji(id:"行", meanings:["go","conduct"], onyomi:["コウ","ギョウ"], kunyomi:["い","おこな"], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"旅行", reading:"りょこう", meaning:"travel"),
            KanjiExample(word:"行く", reading:"いく", meaning:"to go")]),
        Kanji(id:"見", meanings:["see","look"], onyomi:["ケン"], kunyomi:["み"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"見る", reading:"みる", meaning:"to see"),
            KanjiExample(word:"意見", reading:"いけん", meaning:"opinion")]),
        Kanji(id:"食", meanings:["eat","food"], onyomi:["ショク","ジキ"], kunyomi:["た","く"], level:.N5, strokeCount:9, examples:[
            KanjiExample(word:"食べる", reading:"たべる", meaning:"to eat"),
            KanjiExample(word:"食事", reading:"しょくじ", meaning:"meal")]),
        Kanji(id:"飲", meanings:["drink"], onyomi:["イン"], kunyomi:["の"], level:.N5, strokeCount:12, examples:[
            KanjiExample(word:"飲む", reading:"のむ", meaning:"to drink"),
            KanjiExample(word:"飲料", reading:"いんりょう", meaning:"beverage")]),
        Kanji(id:"読", meanings:["read"], onyomi:["ドク","トク","トウ"], kunyomi:["よ"], level:.N5, strokeCount:14, examples:[
            KanjiExample(word:"読む", reading:"よむ", meaning:"to read"),
            KanjiExample(word:"読書", reading:"どくしょ", meaning:"reading (books)")]),
        Kanji(id:"書", meanings:["write"], onyomi:["ショ"], kunyomi:["か"], level:.N5, strokeCount:10, examples:[
            KanjiExample(word:"書く", reading:"かく", meaning:"to write"),
            KanjiExample(word:"図書館", reading:"としょかん", meaning:"library")]),
        Kanji(id:"聞", meanings:["hear","listen","ask"], onyomi:["ブン","モン"], kunyomi:["き","き"], level:.N5, strokeCount:14, examples:[
            KanjiExample(word:"聞く", reading:"きく", meaning:"to hear / to ask"),
            KanjiExample(word:"新聞", reading:"しんぶん", meaning:"newspaper")]),
        Kanji(id:"話", meanings:["speak","talk","story"], onyomi:["ワ"], kunyomi:["はな","はなし"], level:.N5, strokeCount:13, examples:[
            KanjiExample(word:"話す", reading:"はなす", meaning:"to speak"),
            KanjiExample(word:"電話", reading:"でんわ", meaning:"telephone")]),
        Kanji(id:"電", meanings:["electricity"], onyomi:["デン"], kunyomi:[], level:.N5, strokeCount:13, examples:[
            KanjiExample(word:"電車", reading:"でんしゃ", meaning:"train"),
            KanjiExample(word:"電話", reading:"でんわ", meaning:"telephone")]),
        Kanji(id:"車", meanings:["car","vehicle"], onyomi:["シャ"], kunyomi:["くるま"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"電車", reading:"でんしゃ", meaning:"train"),
            KanjiExample(word:"自動車", reading:"じどうしゃ", meaning:"automobile")]),
        Kanji(id:"気", meanings:["spirit","energy","feeling"], onyomi:["キ","ケ"], kunyomi:[], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"天気", reading:"てんき", meaning:"weather"),
            KanjiExample(word:"元気", reading:"げんき", meaning:"healthy / energetic")]),
        Kanji(id:"天", meanings:["heaven","sky"], onyomi:["テン"], kunyomi:["あめ","あま"], level:.N5, strokeCount:4, examples:[
            KanjiExample(word:"天気", reading:"てんき", meaning:"weather"),
            KanjiExample(word:"天才", reading:"てんさい", meaning:"genius")]),
        Kanji(id:"白", meanings:["white"], onyomi:["ハク","ビャク"], kunyomi:["しろ","しら"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"白い", reading:"しろい", meaning:"white"),
            KanjiExample(word:"白紙", reading:"はくし", meaning:"blank paper")]),
        Kanji(id:"黒", meanings:["black"], onyomi:["コク"], kunyomi:["くろ"], level:.N5, strokeCount:11, examples:[
            KanjiExample(word:"黒い", reading:"くろい", meaning:"black"),
            KanjiExample(word:"黒板", reading:"こくばん", meaning:"blackboard")]),
        Kanji(id:"赤", meanings:["red"], onyomi:["セキ","シャク"], kunyomi:["あか"], level:.N5, strokeCount:7, examples:[
            KanjiExample(word:"赤い", reading:"あかい", meaning:"red"),
            KanjiExample(word:"赤ちゃん", reading:"あかちゃん", meaning:"baby")]),
        Kanji(id:"青", meanings:["blue","green"], onyomi:["セイ","ショウ"], kunyomi:["あお"], level:.N5, strokeCount:8, examples:[
            KanjiExample(word:"青い", reading:"あおい", meaning:"blue"),
            KanjiExample(word:"青春", reading:"せいしゅん", meaning:"youth / adolescence")]),
        Kanji(id:"高", meanings:["tall","high","expensive"], onyomi:["コウ"], kunyomi:["たか"], level:.N5, strokeCount:10, examples:[
            KanjiExample(word:"高い", reading:"たかい", meaning:"tall / expensive"),
            KanjiExample(word:"高校", reading:"こうこう", meaning:"high school")]),
        Kanji(id:"安", meanings:["cheap","safe","peaceful"], onyomi:["アン"], kunyomi:["やす"], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"安い", reading:"やすい", meaning:"cheap"),
            KanjiExample(word:"安全", reading:"あんぜん", meaning:"safety")]),
        Kanji(id:"新", meanings:["new"], onyomi:["シン"], kunyomi:["あたら","あら","にい"], level:.N5, strokeCount:13, examples:[
            KanjiExample(word:"新聞", reading:"しんぶん", meaning:"newspaper"),
            KanjiExample(word:"新しい", reading:"あたらしい", meaning:"new")]),
        Kanji(id:"古", meanings:["old","ancient"], onyomi:["コ"], kunyomi:["ふる"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"古い", reading:"ふるい", meaning:"old"),
            KanjiExample(word:"古代", reading:"こだい", meaning:"ancient times")]),
        Kanji(id:"長", meanings:["long","leader"], onyomi:["チョウ"], kunyomi:["なが"], level:.N5, strokeCount:8, examples:[
            KanjiExample(word:"長い", reading:"ながい", meaning:"long"),
            KanjiExample(word:"社長", reading:"しゃちょう", meaning:"company president")]),
        Kanji(id:"東", meanings:["east"], onyomi:["トウ"], kunyomi:["ひがし"], level:.N5, strokeCount:8, examples:[
            KanjiExample(word:"東京", reading:"とうきょう", meaning:"Tokyo"),
            KanjiExample(word:"東西", reading:"とうざい", meaning:"east and west")]),
        Kanji(id:"西", meanings:["west"], onyomi:["セイ","サイ"], kunyomi:["にし"], level:.N5, strokeCount:6, examples:[
            KanjiExample(word:"西", reading:"にし", meaning:"west"),
            KanjiExample(word:"関西", reading:"かんさい", meaning:"Kansai region")]),
        Kanji(id:"南", meanings:["south"], onyomi:["ナン","ナ"], kunyomi:["みなみ"], level:.N5, strokeCount:9, examples:[
            KanjiExample(word:"南", reading:"みなみ", meaning:"south"),
            KanjiExample(word:"南米", reading:"なんべい", meaning:"South America")]),
        Kanji(id:"北", meanings:["north"], onyomi:["ホク"], kunyomi:["きた"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"北海道", reading:"ほっかいどう", meaning:"Hokkaido"),
            KanjiExample(word:"北", reading:"きた", meaning:"north")]),
        Kanji(id:"右", meanings:["right"], onyomi:["ウ","ユウ"], kunyomi:["みぎ"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"右", reading:"みぎ", meaning:"right"),
            KanjiExample(word:"右折", reading:"うせつ", meaning:"right turn")]),
        Kanji(id:"左", meanings:["left"], onyomi:["サ"], kunyomi:["ひだり"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"左", reading:"ひだり", meaning:"left"),
            KanjiExample(word:"左折", reading:"させつ", meaning:"left turn")]),
        Kanji(id:"外", meanings:["outside","foreign"], onyomi:["ガイ","ゲ"], kunyomi:["そと","はず","ほか"], level:.N5, strokeCount:5, examples:[
            KanjiExample(word:"外国", reading:"がいこく", meaning:"foreign country"),
            KanjiExample(word:"外出", reading:"がいしゅつ", meaning:"going out")]),
        Kanji(id:"前", meanings:["front","before"], onyomi:["ゼン"], kunyomi:["まえ"], level:.N5, strokeCount:9, examples:[
            KanjiExample(word:"前", reading:"まえ", meaning:"front / before"),
            KanjiExample(word:"名前", reading:"なまえ", meaning:"name")]),
        Kanji(id:"後", meanings:["after","behind"], onyomi:["ゴ","コウ"], kunyomi:["あと","うし","のち"], level:.N5, strokeCount:9, examples:[
            KanjiExample(word:"午後", reading:"ごご", meaning:"afternoon"),
            KanjiExample(word:"後ろ", reading:"うしろ", meaning:"behind")])
    ]

    // ─────────────────────────────────────────
    // MARK: N4 (170 kanji)
    // ─────────────────────────────────────────
    static let n4: [Kanji] = [
        Kanji(id:"立", meanings:["stand","rise"], onyomi:["リツ","リュウ"], kunyomi:["た"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"立つ", reading:"たつ", meaning:"to stand"),
            KanjiExample(word:"独立", reading:"どくりつ", meaning:"independence")]),
        Kanji(id:"体", meanings:["body"], onyomi:["タイ","テイ"], kunyomi:["からだ"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"身体", reading:"からだ", meaning:"body"),
            KanjiExample(word:"体育", reading:"たいいく", meaning:"physical education")]),
        Kanji(id:"心", meanings:["heart","mind"], onyomi:["シン"], kunyomi:["こころ"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"心配", reading:"しんぱい", meaning:"worry"),
            KanjiExample(word:"中心", reading:"ちゅうしん", meaning:"center")]),
        Kanji(id:"力", meanings:["power","strength"], onyomi:["リョク","リキ"], kunyomi:["ちから"], level:.N4, strokeCount:2, examples:[
            KanjiExample(word:"力", reading:"ちから", meaning:"strength"),
            KanjiExample(word:"努力", reading:"どりょく", meaning:"effort")]),
        Kanji(id:"知", meanings:["know"], onyomi:["チ"], kunyomi:["し"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"知る", reading:"しる", meaning:"to know"),
            KanjiExample(word:"知識", reading:"ちしき", meaning:"knowledge")]),
        Kanji(id:"思", meanings:["think","feel"], onyomi:["シ"], kunyomi:["おも"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"思う", reading:"おもう", meaning:"to think"),
            KanjiExample(word:"思い出", reading:"おもいで", meaning:"memory")]),
        Kanji(id:"使", meanings:["use","employ"], onyomi:["シ"], kunyomi:["つか"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"使う", reading:"つかう", meaning:"to use"),
            KanjiExample(word:"大使", reading:"たいし", meaning:"ambassador")]),
        Kanji(id:"作", meanings:["make","create"], onyomi:["サク","サ"], kunyomi:["つく"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"作る", reading:"つくる", meaning:"to make"),
            KanjiExample(word:"作品", reading:"さくひん", meaning:"work (of art)")]),
        Kanji(id:"出", meanings:["exit","come out"], onyomi:["シュツ","スイ"], kunyomi:["で","だ"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"出る", reading:"でる", meaning:"to go out"),
            KanjiExample(word:"出口", reading:"でぐち", meaning:"exit")]),
        Kanji(id:"入", meanings:["enter"], onyomi:["ニュウ"], kunyomi:["い","はい"], level:.N4, strokeCount:2, examples:[
            KanjiExample(word:"入る", reading:"はいる", meaning:"to enter"),
            KanjiExample(word:"入口", reading:"いりぐち", meaning:"entrance")]),
        Kanji(id:"買", meanings:["buy"], onyomi:["バイ"], kunyomi:["か"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"買う", reading:"かう", meaning:"to buy"),
            KanjiExample(word:"売買", reading:"ばいばい", meaning:"trade / buying and selling")]),
        Kanji(id:"売", meanings:["sell"], onyomi:["バイ"], kunyomi:["う"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"売る", reading:"うる", meaning:"to sell"),
            KanjiExample(word:"販売", reading:"はんばい", meaning:"sales")]),
        Kanji(id:"会", meanings:["meet","meeting","association"], onyomi:["カイ","エ"], kunyomi:["あ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"会社", reading:"かいしゃ", meaning:"company"),
            KanjiExample(word:"会う", reading:"あう", meaning:"to meet")]),
        Kanji(id:"社", meanings:["company","shrine"], onyomi:["シャ"], kunyomi:["やしろ"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"会社", reading:"かいしゃ", meaning:"company"),
            KanjiExample(word:"神社", reading:"じんじゃ", meaning:"Shinto shrine")]),
        Kanji(id:"病", meanings:["illness","disease"], onyomi:["ビョウ","ヘイ"], kunyomi:["や"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"病院", reading:"びょういん", meaning:"hospital"),
            KanjiExample(word:"病気", reading:"びょうき", meaning:"illness")]),
        Kanji(id:"院", meanings:["institution","mansion"], onyomi:["イン"], kunyomi:[], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"病院", reading:"びょういん", meaning:"hospital"),
            KanjiExample(word:"大学院", reading:"だいがくいん", meaning:"graduate school")]),
        Kanji(id:"駅", meanings:["train station"], onyomi:["エキ"], kunyomi:[], level:.N4, strokeCount:14, examples:[
            KanjiExample(word:"駅", reading:"えき", meaning:"station"),
            KanjiExample(word:"駅員", reading:"えきいん", meaning:"station staff")]),
        Kanji(id:"道", meanings:["road","way","path"], onyomi:["ドウ","トウ"], kunyomi:["みち"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"道路", reading:"どうろ", meaning:"road"),
            KanjiExample(word:"北海道", reading:"ほっかいどう", meaning:"Hokkaido")]),
        Kanji(id:"答", meanings:["answer","reply"], onyomi:["トウ"], kunyomi:["こた"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"答える", reading:"こたえる", meaning:"to answer"),
            KanjiExample(word:"回答", reading:"かいとう", meaning:"answer / response")]),
        Kanji(id:"問", meanings:["question","problem"], onyomi:["モン"], kunyomi:["と"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"問題", reading:"もんだい", meaning:"problem"),
            KanjiExample(word:"質問", reading:"しつもん", meaning:"question")]),
        Kanji(id:"持", meanings:["hold","have","carry"], onyomi:["ジ"], kunyomi:["も"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"持つ", reading:"もつ", meaning:"to hold"),
            KanjiExample(word:"気持ち", reading:"きもち", meaning:"feeling")]),
        Kanji(id:"待", meanings:["wait"], onyomi:["タイ"], kunyomi:["ま"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"待つ", reading:"まつ", meaning:"to wait"),
            KanjiExample(word:"期待", reading:"きたい", meaning:"expectation")]),
        Kanji(id:"起", meanings:["rise","wake up"], onyomi:["キ"], kunyomi:["お"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"起きる", reading:"おきる", meaning:"to wake up"),
            KanjiExample(word:"起こす", reading:"おこす", meaning:"to wake someone up")]),
        Kanji(id:"帰", meanings:["return home"], onyomi:["キ"], kunyomi:["かえ"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"帰る", reading:"かえる", meaning:"to return home"),
            KanjiExample(word:"帰国", reading:"きこく", meaning:"returning to one's country")]),
        Kanji(id:"働", meanings:["work"], onyomi:["ドウ"], kunyomi:["はたら"], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"働く", reading:"はたらく", meaning:"to work"),
            KanjiExample(word:"労働", reading:"ろうどう", meaning:"labor")]),
        Kanji(id:"休", meanings:["rest","holiday"], onyomi:["キュウ"], kunyomi:["やす"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"休む", reading:"やすむ", meaning:"to rest"),
            KanjiExample(word:"夏休み", reading:"なつやすみ", meaning:"summer vacation")]),
        Kanji(id:"旅", meanings:["travel","trip"], onyomi:["リョ"], kunyomi:["たび"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"旅行", reading:"りょこう", meaning:"travel"),
            KanjiExample(word:"旅", reading:"たび", meaning:"journey")]),
        Kanji(id:"映", meanings:["reflect","project"], onyomi:["エイ"], kunyomi:["うつ"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"映画", reading:"えいが", meaning:"movie"),
            KanjiExample(word:"映す", reading:"うつす", meaning:"to project")]),
        Kanji(id:"画", meanings:["picture","stroke"], onyomi:["ガ","カク"], kunyomi:["えが"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"映画", reading:"えいが", meaning:"movie"),
            KanjiExample(word:"計画", reading:"けいかく", meaning:"plan")]),
        Kanji(id:"音", meanings:["sound","noise"], onyomi:["オン","イン"], kunyomi:["おと","ね"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"音楽", reading:"おんがく", meaning:"music"),
            KanjiExample(word:"音", reading:"おと", meaning:"sound")]),
        Kanji(id:"楽", meanings:["music","comfort","ease"], onyomi:["ガク","ラク"], kunyomi:["たの"], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"音楽", reading:"おんがく", meaning:"music"),
            KanjiExample(word:"楽しい", reading:"たのしい", meaning:"fun / enjoyable")]),
        Kanji(id:"花", meanings:["flower"], onyomi:["カ"], kunyomi:["はな"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"花", reading:"はな", meaning:"flower"),
            KanjiExample(word:"花火", reading:"はなび", meaning:"fireworks")]),
        Kanji(id:"茶", meanings:["tea"], onyomi:["チャ","サ"], kunyomi:[], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"お茶", reading:"おちゃ", meaning:"green tea"),
            KanjiExample(word:"茶色", reading:"ちゃいろ", meaning:"brown")]),
        Kanji(id:"肉", meanings:["meat","flesh"], onyomi:["ニク"], kunyomi:[], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"肉", reading:"にく", meaning:"meat"),
            KanjiExample(word:"牛肉", reading:"ぎゅうにく", meaning:"beef")]),
        Kanji(id:"魚", meanings:["fish"], onyomi:["ギョ"], kunyomi:["さかな","うお"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"魚", reading:"さかな", meaning:"fish"),
            KanjiExample(word:"金魚", reading:"きんぎょ", meaning:"goldfish")]),
        Kanji(id:"野", meanings:["field","plains"], onyomi:["ヤ"], kunyomi:["の"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"野菜", reading:"やさい", meaning:"vegetable"),
            KanjiExample(word:"野球", reading:"やきゅう", meaning:"baseball")]),
        Kanji(id:"菜", meanings:["vegetable","greens"], onyomi:["サイ"], kunyomi:["な"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"野菜", reading:"やさい", meaning:"vegetable"),
            KanjiExample(word:"白菜", reading:"はくさい", meaning:"napa cabbage")]),
        Kanji(id:"文", meanings:["sentence","writing","culture"], onyomi:["ブン","モン"], kunyomi:["ふみ"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"文化", reading:"ぶんか", meaning:"culture"),
            KanjiExample(word:"文章", reading:"ぶんしょう", meaning:"text / sentence")]),
        Kanji(id:"字", meanings:["character","letter"], onyomi:["ジ"], kunyomi:["あざ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"漢字", reading:"かんじ", meaning:"kanji"),
            KanjiExample(word:"字", reading:"じ", meaning:"character")]),
        Kanji(id:"漢", meanings:["China","Chinese","Han"], onyomi:["カン"], kunyomi:[], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"漢字", reading:"かんじ", meaning:"kanji"),
            KanjiExample(word:"漢方", reading:"かんぽう", meaning:"Chinese medicine")]),
        Kanji(id:"意", meanings:["idea","meaning","will"], onyomi:["イ"], kunyomi:[], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"意味", reading:"いみ", meaning:"meaning"),
            KanjiExample(word:"注意", reading:"ちゅうい", meaning:"attention / caution")]),
        Kanji(id:"味", meanings:["taste","flavor"], onyomi:["ミ"], kunyomi:["あじ"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"意味", reading:"いみ", meaning:"meaning"),
            KanjiExample(word:"味", reading:"あじ", meaning:"taste")]),
        Kanji(id:"方", meanings:["direction","way","person"], onyomi:["ホウ"], kunyomi:["かた"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"方法", reading:"ほうほう", meaning:"method"),
            KanjiExample(word:"方向", reading:"ほうこう", meaning:"direction")]),
        Kanji(id:"法", meanings:["law","method"], onyomi:["ホウ","ハッ"], kunyomi:["のり"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"方法", reading:"ほうほう", meaning:"method"),
            KanjiExample(word:"法律", reading:"ほうりつ", meaning:"law")]),
        Kanji(id:"度", meanings:["degree","time","occurrence"], onyomi:["ド","ト","タク"], kunyomi:["たび"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"温度", reading:"おんど", meaning:"temperature"),
            KanjiExample(word:"今度", reading:"こんど", meaning:"this time / next time")]),
        Kanji(id:"数", meanings:["number","count"], onyomi:["スウ","ス"], kunyomi:["かず","かぞ"], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"数字", reading:"すうじ", meaning:"numeral"),
            KanjiExample(word:"数える", reading:"かぞえる", meaning:"to count")]),
        Kanji(id:"同", meanings:["same","similar"], onyomi:["ドウ"], kunyomi:["おな"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"同じ", reading:"おなじ", meaning:"same"),
            KanjiExample(word:"同時", reading:"どうじ", meaning:"simultaneous")]),
        Kanji(id:"近", meanings:["near","close"], onyomi:["キン"], kunyomi:["ちか"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"近い", reading:"ちかい", meaning:"close / near"),
            KanjiExample(word:"最近", reading:"さいきん", meaning:"recently")]),
        Kanji(id:"遠", meanings:["far","distant"], onyomi:["エン","オン"], kunyomi:["とお"], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"遠い", reading:"とおい", meaning:"far"),
            KanjiExample(word:"遠足", reading:"えんそく", meaning:"excursion / outing")]),
        Kanji(id:"強", meanings:["strong"], onyomi:["キョウ"], kunyomi:["つよ"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"強い", reading:"つよい", meaning:"strong"),
            KanjiExample(word:"勉強", reading:"べんきょう", meaning:"study")]),
        Kanji(id:"弱", meanings:["weak"], onyomi:["ジャク"], kunyomi:["よわ"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"弱い", reading:"よわい", meaning:"weak"),
            KanjiExample(word:"弱点", reading:"じゃくてん", meaning:"weak point")]),
        Kanji(id:"急", meanings:["urgent","hurry"], onyomi:["キュウ"], kunyomi:["いそ"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"急ぐ", reading:"いそぐ", meaning:"to hurry"),
            KanjiExample(word:"緊急", reading:"きんきゅう", meaning:"emergency")]),
        Kanji(id:"運", meanings:["carry","luck"], onyomi:["ウン"], kunyomi:["はこ"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"運動", reading:"うんどう", meaning:"exercise"),
            KanjiExample(word:"運ぶ", reading:"はこぶ", meaning:"to carry")]),
        Kanji(id:"転", meanings:["roll","turn"], onyomi:["テン"], kunyomi:["ころ"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"自転車", reading:"じてんしゃ", meaning:"bicycle"),
            KanjiExample(word:"転ぶ", reading:"ころぶ", meaning:"to fall")]),
        Kanji(id:"乗", meanings:["ride","board"], onyomi:["ジョウ"], kunyomi:["の"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"乗る", reading:"のる", meaning:"to ride"),
            KanjiExample(word:"乗り物", reading:"のりもの", meaning:"vehicle")]),
        Kanji(id:"止", meanings:["stop"], onyomi:["シ","チ"], kunyomi:["と","や"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"止まる", reading:"とまる", meaning:"to stop"),
            KanjiExample(word:"禁止", reading:"きんし", meaning:"prohibition")]),
        Kanji(id:"引", meanings:["pull","draw"], onyomi:["イン"], kunyomi:["ひ"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"引く", reading:"ひく", meaning:"to pull"),
            KanjiExample(word:"引っ越し", reading:"ひっこし", meaning:"moving house")]),
        Kanji(id:"押", meanings:["push"], onyomi:["オウ"], kunyomi:["お"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"押す", reading:"おす", meaning:"to push"),
            KanjiExample(word:"押さえる", reading:"おさえる", meaning:"to hold down")]),
        Kanji(id:"開", meanings:["open"], onyomi:["カイ"], kunyomi:["あ","ひら"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"開く", reading:"あく", meaning:"to open"),
            KanjiExample(word:"開始", reading:"かいし", meaning:"start")]),
        Kanji(id:"閉", meanings:["close"], onyomi:["ヘイ"], kunyomi:["と","し"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"閉める", reading:"しめる", meaning:"to close"),
            KanjiExample(word:"閉会", reading:"へいかい", meaning:"closing ceremony")]),
        Kanji(id:"泳", meanings:["swim"], onyomi:["エイ"], kunyomi:["およ"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"泳ぐ", reading:"およぐ", meaning:"to swim"),
            KanjiExample(word:"水泳", reading:"すいえい", meaning:"swimming")]),
        Kanji(id:"走", meanings:["run"], onyomi:["ソウ"], kunyomi:["はし"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"走る", reading:"はしる", meaning:"to run"),
            KanjiExample(word:"競走", reading:"きょうそう", meaning:"race")]),
        Kanji(id:"飛", meanings:["fly"], onyomi:["ヒ"], kunyomi:["と"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"飛ぶ", reading:"とぶ", meaning:"to fly"),
            KanjiExample(word:"飛行機", reading:"ひこうき", meaning:"airplane")]),
        Kanji(id:"切", meanings:["cut"], onyomi:["セツ","サイ"], kunyomi:["き"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"切る", reading:"きる", meaning:"to cut"),
            KanjiExample(word:"大切", reading:"たいせつ", meaning:"important")]),
        Kanji(id:"着", meanings:["wear","arrive"], onyomi:["チャク"], kunyomi:["き","つ"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"着る", reading:"きる", meaning:"to wear"),
            KanjiExample(word:"到着", reading:"とうちゃく", meaning:"arrival")]),
        Kanji(id:"脱", meanings:["remove","escape"], onyomi:["ダツ"], kunyomi:["ぬ"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"脱ぐ", reading:"ぬぐ", meaning:"to take off (clothes)"),
            KanjiExample(word:"脱出", reading:"だっしゅつ", meaning:"escape")]),
        Kanji(id:"洗", meanings:["wash"], onyomi:["セン"], kunyomi:["あら"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"洗う", reading:"あらう", meaning:"to wash"),
            KanjiExample(word:"洗濯", reading:"せんたく", meaning:"laundry")]),
        Kanji(id:"寝", meanings:["sleep"], onyomi:["シン"], kunyomi:["ね"], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"寝る", reading:"ねる", meaning:"to sleep"),
            KanjiExample(word:"就寝", reading:"しゅうしん", meaning:"going to bed")]),
        Kanji(id:"朝", meanings:["morning"], onyomi:["チョウ"], kunyomi:["あさ"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"朝ご飯", reading:"あさごはん", meaning:"breakfast"),
            KanjiExample(word:"毎朝", reading:"まいあさ", meaning:"every morning")]),
        Kanji(id:"昼", meanings:["noon","daytime"], onyomi:["チュウ"], kunyomi:["ひる"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"昼ご飯", reading:"ひるごはん", meaning:"lunch"),
            KanjiExample(word:"昼間", reading:"ひるま", meaning:"daytime")]),
        Kanji(id:"夜", meanings:["night"], onyomi:["ヤ"], kunyomi:["よる","よ"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"夜", reading:"よる", meaning:"night"),
            KanjiExample(word:"夜中", reading:"よなか", meaning:"middle of the night")]),
        Kanji(id:"週", meanings:["week"], onyomi:["シュウ"], kunyomi:[], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"来週", reading:"らいしゅう", meaning:"next week"),
            KanjiExample(word:"毎週", reading:"まいしゅう", meaning:"every week")]),
        Kanji(id:"去", meanings:["past","leave"], onyomi:["キョ","コ"], kunyomi:["さ"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"去年", reading:"きょねん", meaning:"last year"),
            KanjiExample(word:"過去", reading:"かこ", meaning:"the past")]),
        Kanji(id:"当", meanings:["hit","this"], onyomi:["トウ"], kunyomi:["あ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"当たる", reading:"あたる", meaning:"to hit"),
            KanjiExample(word:"当然", reading:"とうぜん", meaning:"naturally")]),
        Kanji(id:"自", meanings:["self"], onyomi:["ジ","シ"], kunyomi:["みずか"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"自分", reading:"じぶん", meaning:"oneself"),
            KanjiExample(word:"自由", reading:"じゆう", meaning:"freedom")]),
        Kanji(id:"他", meanings:["other"], onyomi:["タ"], kunyomi:["ほか"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"他の", reading:"ほかの", meaning:"other"),
            KanjiExample(word:"その他", reading:"そのた", meaning:"and others")]),
        Kanji(id:"動", meanings:["move"], onyomi:["ドウ"], kunyomi:["うご"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"動く", reading:"うごく", meaning:"to move"),
            KanjiExample(word:"運動", reading:"うんどう", meaning:"exercise")]),
        Kanji(id:"活", meanings:["lively","active"], onyomi:["カツ"], kunyomi:["い"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"生活", reading:"せいかつ", meaning:"daily life"),
            KanjiExample(word:"活動", reading:"かつどう", meaning:"activity")]),
        Kanji(id:"交", meanings:["mix","exchange"], onyomi:["コウ"], kunyomi:["ま","か"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"交通", reading:"こうつう", meaning:"traffic"),
            KanjiExample(word:"交換", reading:"こうかん", meaning:"exchange")]),
        Kanji(id:"通", meanings:["pass","commute"], onyomi:["ツウ","ツ"], kunyomi:["とお","かよ"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"通る", reading:"とおる", meaning:"to pass"),
            KanjiExample(word:"交通", reading:"こうつう", meaning:"traffic")]),
        Kanji(id:"合", meanings:["fit","combine"], onyomi:["ゴウ","ガッ"], kunyomi:["あ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"合う", reading:"あう", meaning:"to fit"),
            KanjiExample(word:"場合", reading:"ばあい", meaning:"case / situation")]),
        Kanji(id:"向", meanings:["face","direction"], onyomi:["コウ"], kunyomi:["む"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"向く", reading:"むく", meaning:"to face"),
            KanjiExample(word:"方向", reading:"ほうこう", meaning:"direction")]),
        Kanji(id:"良", meanings:["good"], onyomi:["リョウ"], kunyomi:["よ"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"良い", reading:"よい", meaning:"good"),
            KanjiExample(word:"改良", reading:"かいりょう", meaning:"improvement")]),
        Kanji(id:"悪", meanings:["bad","evil"], onyomi:["アク","オ"], kunyomi:["わる"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"悪い", reading:"わるい", meaning:"bad"),
            KanjiExample(word:"最悪", reading:"さいあく", meaning:"worst")]),
        Kanji(id:"痛", meanings:["painful"], onyomi:["ツウ"], kunyomi:["いた"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"痛い", reading:"いたい", meaning:"painful"),
            KanjiExample(word:"頭痛", reading:"ずつう", meaning:"headache")]),
        Kanji(id:"苦", meanings:["suffering","bitter"], onyomi:["ク"], kunyomi:["くる","にが"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"苦しい", reading:"くるしい", meaning:"painful"),
            KanjiExample(word:"苦手", reading:"にがて", meaning:"weak point")]),
        Kanji(id:"困", meanings:["troubled"], onyomi:["コン"], kunyomi:["こま"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"困る", reading:"こまる", meaning:"to be troubled"),
            KanjiExample(word:"困難", reading:"こんなん", meaning:"difficulty")]),
        Kanji(id:"緑", meanings:["green"], onyomi:["リョク","ロク"], kunyomi:["みどり"], level:.N4, strokeCount:14, examples:[
            KanjiExample(word:"緑", reading:"みどり", meaning:"green"),
            KanjiExample(word:"緑茶", reading:"りょくちゃ", meaning:"green tea")]),
        Kanji(id:"黄", meanings:["yellow"], onyomi:["コウ","オウ"], kunyomi:["き"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"黄色", reading:"きいろ", meaning:"yellow"),
            KanjiExample(word:"黄金", reading:"おうごん", meaning:"gold")]),
        Kanji(id:"春", meanings:["spring"], onyomi:["シュン"], kunyomi:["はる"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"春", reading:"はる", meaning:"spring"),
            KanjiExample(word:"春休み", reading:"はるやすみ", meaning:"spring break")]),
        Kanji(id:"夏", meanings:["summer"], onyomi:["カ","ゲ"], kunyomi:["なつ"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"夏", reading:"なつ", meaning:"summer"),
            KanjiExample(word:"夏休み", reading:"なつやすみ", meaning:"summer break")]),
        Kanji(id:"秋", meanings:["autumn"], onyomi:["シュウ"], kunyomi:["あき"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"秋", reading:"あき", meaning:"autumn"),
            KanjiExample(word:"秋分", reading:"しゅうぶん", meaning:"autumn equinox")]),
        Kanji(id:"冬", meanings:["winter"], onyomi:["トウ"], kunyomi:["ふゆ"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"冬", reading:"ふゆ", meaning:"winter"),
            KanjiExample(word:"冬休み", reading:"ふゆやすみ", meaning:"winter break")]),
        Kanji(id:"風", meanings:["wind"], onyomi:["フウ","フ"], kunyomi:["かぜ","かざ"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"台風", reading:"たいふう", meaning:"typhoon"),
            KanjiExample(word:"風邪", reading:"かぜ", meaning:"cold (illness)")]),
        Kanji(id:"雨", meanings:["rain"], onyomi:["ウ"], kunyomi:["あめ","あま"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"雨", reading:"あめ", meaning:"rain"),
            KanjiExample(word:"大雨", reading:"おおあめ", meaning:"heavy rain")]),
        Kanji(id:"雪", meanings:["snow"], onyomi:["セツ"], kunyomi:["ゆき"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"雪", reading:"ゆき", meaning:"snow"),
            KanjiExample(word:"雪山", reading:"ゆきやま", meaning:"snowy mountain")]),
        Kanji(id:"海", meanings:["sea","ocean"], onyomi:["カイ"], kunyomi:["うみ"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"海", reading:"うみ", meaning:"sea"),
            KanjiExample(word:"海外", reading:"かいがい", meaning:"overseas")]),
        Kanji(id:"池", meanings:["pond"], onyomi:["チ"], kunyomi:["いけ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"池", reading:"いけ", meaning:"pond"),
            KanjiExample(word:"電池", reading:"でんち", meaning:"battery")]),
        Kanji(id:"林", meanings:["forest","grove"], onyomi:["リン"], kunyomi:["はやし"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"林", reading:"はやし", meaning:"grove"),
            KanjiExample(word:"森林", reading:"しんりん", meaning:"forest")]),
        Kanji(id:"森", meanings:["forest"], onyomi:["シン"], kunyomi:["もり"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"森", reading:"もり", meaning:"forest"),
            KanjiExample(word:"森林", reading:"しんりん", meaning:"forest")]),
        Kanji(id:"光", meanings:["light"], onyomi:["コウ"], kunyomi:["ひかり","ひか"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"光", reading:"ひかり", meaning:"light"),
            KanjiExample(word:"光線", reading:"こうせん", meaning:"ray of light")]),
        Kanji(id:"石", meanings:["stone"], onyomi:["セキ","シャク"], kunyomi:["いし"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"石", reading:"いし", meaning:"stone"),
            KanjiExample(word:"宝石", reading:"ほうせき", meaning:"jewel")]),
        Kanji(id:"地", meanings:["earth","ground"], onyomi:["チ","ジ"], kunyomi:[], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"地図", reading:"ちず", meaning:"map"),
            KanjiExample(word:"地球", reading:"ちきゅう", meaning:"Earth")]),
        Kanji(id:"図", meanings:["diagram","map"], onyomi:["ズ","ト"], kunyomi:[], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"地図", reading:"ちず", meaning:"map"),
            KanjiExample(word:"図書館", reading:"としょかん", meaning:"library")]),
        Kanji(id:"品", meanings:["goods","article"], onyomi:["ヒン"], kunyomi:["しな"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"商品", reading:"しょうひん", meaning:"product"),
            KanjiExample(word:"品物", reading:"しなもの", meaning:"goods")]),
        Kanji(id:"物", meanings:["thing","object"], onyomi:["ブツ","モツ"], kunyomi:["もの"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"食べ物", reading:"たべもの", meaning:"food"),
            KanjiExample(word:"買い物", reading:"かいもの", meaning:"shopping")]),
        Kanji(id:"事", meanings:["thing","matter"], onyomi:["ジ","ズ"], kunyomi:["こと"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"仕事", reading:"しごと", meaning:"work"),
            KanjiExample(word:"大事", reading:"だいじ", meaning:"important")]),
        Kanji(id:"者", meanings:["person"], onyomi:["シャ"], kunyomi:["もの"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"医者", reading:"いしゃ", meaning:"doctor"),
            KanjiExample(word:"学者", reading:"がくしゃ", meaning:"scholar")]),
        Kanji(id:"理", meanings:["reason","logic"], onyomi:["リ"], kunyomi:[], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"理由", reading:"りゆう", meaning:"reason"),
            KanjiExample(word:"料理", reading:"りょうり", meaning:"cooking")]),
        Kanji(id:"由", meanings:["reason","from"], onyomi:["ユ","ユウ","ユイ"], kunyomi:["よし"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"理由", reading:"りゆう", meaning:"reason"),
            KanjiExample(word:"自由", reading:"じゆう", meaning:"freedom")]),
        Kanji(id:"特", meanings:["special"], onyomi:["トク"], kunyomi:[], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"特別", reading:"とくべつ", meaning:"special"),
            KanjiExample(word:"特に", reading:"とくに", meaning:"especially")]),
        Kanji(id:"的", meanings:["~tic","target"], onyomi:["テキ"], kunyomi:["まと"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"目的", reading:"もくてき", meaning:"purpose"),
            KanjiExample(word:"的", reading:"まと", meaning:"target")]),
        Kanji(id:"次", meanings:["next"], onyomi:["ジ","シ"], kunyomi:["つぎ","つ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"次", reading:"つぎ", meaning:"next"),
            KanjiExample(word:"次第", reading:"しだい", meaning:"depending on")]),
        Kanji(id:"有", meanings:["have","exist"], onyomi:["ユウ","ウ"], kunyomi:["あ"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"有名", reading:"ゆうめい", meaning:"famous"),
            KanjiExample(word:"有る", reading:"ある", meaning:"to exist")]),
        Kanji(id:"無", meanings:["nothing","without"], onyomi:["ム","ブ"], kunyomi:["な"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"無い", reading:"ない", meaning:"there is not"),
            KanjiExample(word:"無理", reading:"むり", meaning:"impossible")]),
        Kanji(id:"親", meanings:["parent","intimate"], onyomi:["シン"], kunyomi:["おや","した"], level:.N4, strokeCount:16, examples:[
            KanjiExample(word:"親", reading:"おや", meaning:"parent"),
            KanjiExample(word:"親切", reading:"しんせつ", meaning:"kind")]),
        Kanji(id:"族", meanings:["tribe","family"], onyomi:["ゾク"], kunyomi:[], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"家族", reading:"かぞく", meaning:"family"),
            KanjiExample(word:"民族", reading:"みんぞく", meaning:"people / ethnic group")]),
        Kanji(id:"兄", meanings:["older brother"], onyomi:["ケイ","キョウ"], kunyomi:["あに"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"兄", reading:"あに", meaning:"(my) older brother"),
            KanjiExample(word:"兄弟", reading:"きょうだい", meaning:"siblings")]),
        Kanji(id:"姉", meanings:["older sister"], onyomi:["シ"], kunyomi:["あね"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"姉", reading:"あね", meaning:"(my) older sister"),
            KanjiExample(word:"姉妹", reading:"しまい", meaning:"sisters")]),
        Kanji(id:"弟", meanings:["younger brother"], onyomi:["テイ"], kunyomi:["おとうと"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"弟", reading:"おとうと", meaning:"younger brother"),
            KanjiExample(word:"兄弟", reading:"きょうだい", meaning:"siblings")]),
        Kanji(id:"妹", meanings:["younger sister"], onyomi:["マイ"], kunyomi:["いもうと"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"妹", reading:"いもうと", meaning:"younger sister"),
            KanjiExample(word:"姉妹", reading:"しまい", meaning:"sisters")]),
        Kanji(id:"夫", meanings:["husband"], onyomi:["フ","フウ"], kunyomi:["おっと"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"夫", reading:"おっと", meaning:"husband"),
            KanjiExample(word:"夫婦", reading:"ふうふ", meaning:"married couple")]),
        Kanji(id:"妻", meanings:["wife"], onyomi:["サイ"], kunyomi:["つま"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"妻", reading:"つま", meaning:"wife"),
            KanjiExample(word:"夫婦", reading:"ふうふ", meaning:"married couple")]),
        Kanji(id:"習", meanings:["learn","practice"], onyomi:["シュウ"], kunyomi:["なら"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"習う", reading:"ならう", meaning:"to learn"),
            KanjiExample(word:"練習", reading:"れんしゅう", meaning:"practice")]),
        Kanji(id:"忘", meanings:["forget"], onyomi:["ボウ"], kunyomi:["わす"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"忘れる", reading:"わすれる", meaning:"to forget"),
            KanjiExample(word:"忘年会", reading:"ぼうねんかい", meaning:"year-end party")]),
        Kanji(id:"覚", meanings:["remember","awaken"], onyomi:["カク"], kunyomi:["おぼ","さ"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"覚える", reading:"おぼえる", meaning:"to remember"),
            KanjiExample(word:"目覚め", reading:"めざめ", meaning:"awakening")]),
        Kanji(id:"寺", meanings:["temple", "Buddhist temple"], onyomi:["ジ"], kunyomi:["てら"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"寺", reading:"てら", meaning:"temple"),
            KanjiExample(word:"寺院", reading:"じいん", meaning:"temple")]),
        Kanji(id:"港", meanings:["harbor", "port"], onyomi:["コウ"], kunyomi:["みなと"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"港", reading:"みなと", meaning:"port"),
            KanjiExample(word:"空港", reading:"くうこう", meaning:"airport")]),
        Kanji(id:"私", meanings:["I", "me", "private", "personal"], onyomi:["シ"], kunyomi:["わたし", "わたくし"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"私", reading:"わたし", meaning:"I/me"),
            KanjiExample(word:"私立", reading:"しりつ", meaning:"private (school/institution)")]),
        Kanji(id:"君", meanings:["you", "mister", "dear", "lord"], onyomi:["クン"], kunyomi:["きみ"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"君", reading:"きみ", meaning:"you (familiar)"),
            KanjiExample(word:"君主", reading:"くんしゅ", meaning:"monarch/sovereign")]),
        Kanji(id:"洋", meanings:["ocean", "western", "foreign"], onyomi:["ヨウ"], kunyomi:[], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"洋服", reading:"ようふく", meaning:"Western clothes"),
            KanjiExample(word:"太平洋", reading:"たいへいよう", meaning:"Pacific Ocean")]),
        Kanji(id:"服", meanings:["clothes", "submit", "obey", "dose"], onyomi:["フク"], kunyomi:[], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"服", reading:"ふく", meaning:"clothes"),
            KanjiExample(word:"制服", reading:"せいふく", meaning:"uniform")]),
        Kanji(id:"飯", meanings:["meal", "cooked rice"], onyomi:["ハン"], kunyomi:["めし"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"ご飯", reading:"ごはん", meaning:"meal/cooked rice"),
            KanjiExample(word:"朝飯", reading:"あさめし", meaning:"breakfast")]),
        Kanji(id:"首", meanings:["neck", "head", "chief", "poem"], onyomi:["シュ"], kunyomi:["くび"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"首", reading:"くび", meaning:"neck/head"),
            KanjiExample(word:"首相", reading:"しゅしょう", meaning:"prime minister")]),
        Kanji(id:"留", meanings:["remain", "stay", "fasten", "detain"], onyomi:["リュウ", "ル"], kunyomi:["と", "とど"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"留学", reading:"りゅうがく", meaning:"studying abroad"),
            KanjiExample(word:"留まる", reading:"とどまる", meaning:"to remain/stay")]),
        Kanji(id:"型", meanings:["type", "mold", "model", "style"], onyomi:["ケイ"], kunyomi:["かた"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"型", reading:"かた", meaning:"mold/type"),
            KanjiExample(word:"血液型", reading:"けつえきがた", meaning:"blood type")]),
        Kanji(id:"英", meanings:["England", "excellent", "hero", "brilliant"], onyomi:["エイ"], kunyomi:[], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"英語", reading:"えいご", meaning:"English language"),
            KanjiExample(word:"英雄", reading:"えいゆう", meaning:"hero")]),
        Kanji(id:"球", meanings:["ball", "sphere", "globe"], onyomi:["キュウ"], kunyomi:["たま"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"球", reading:"たま", meaning:"ball"),
            KanjiExample(word:"地球", reading:"ちきゅう", meaning:"Earth/globe")]),
        Kanji(id:"怖", meanings:["scary", "frightened", "dreadful"], onyomi:["フ"], kunyomi:["こわ"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"怖い", reading:"こわい", meaning:"scary/frightening"),
            KanjiExample(word:"恐怖", reading:"きょうふ", meaning:"fear/terror")]),
        Kanji(id:"枚", meanings:["counter for flat things", "sheet"], onyomi:["マイ"], kunyomi:[], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"一枚", reading:"いちまい", meaning:"one sheet"),
            KanjiExample(word:"枚数", reading:"まいすう", meaning:"number of sheets")]),
        Kanji(id:"浅", meanings:["shallow", "light color", "slight"], onyomi:["セン"], kunyomi:["あさ"], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"浅い", reading:"あさい", meaning:"shallow/light"),
            KanjiExample(word:"浅瀬", reading:"あさせ", meaning:"shallow water/shoal")]),
        Kanji(id:"祖", meanings:["ancestor", "founder", "originator"], onyomi:["ソ"], kunyomi:[], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"祖父", reading:"そふ", meaning:"grandfather"),
            KanjiExample(word:"祖先", reading:"そせん", meaning:"ancestor")]),
        Kanji(id:"緒", meanings:["cord", "end", "beginning", "together"], onyomi:["ショ", "チョ"], kunyomi:["お"], level:.N4, strokeCount:14, examples:[
            KanjiExample(word:"一緒", reading:"いっしょ", meaning:"together"),
            KanjiExample(word:"情緒", reading:"じょうちょ", meaning:"emotion/atmosphere")]),
        Kanji(id:"置", meanings:["put", "place", "leave", "set"], onyomi:["チ"], kunyomi:["お"], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"置く", reading:"おく", meaning:"to put/place"),
            KanjiExample(word:"位置", reading:"いち", meaning:"position/location")]),
        Kanji(id:"晴", meanings:["sunny", "clear up", "fair weather"], onyomi:["セイ"], kunyomi:["は"], level:.N4, strokeCount:12, examples:[
            KanjiExample(word:"晴れ", reading:"はれ", meaning:"sunny/fine weather"),
            KanjiExample(word:"晴天", reading:"せいてん", meaning:"clear sky")]),
        Kanji(id:"曇", meanings:["cloudy", "overcast", "become cloudy"], onyomi:["ドン"], kunyomi:["くも"], level:.N4, strokeCount:16, examples:[
            KanjiExample(word:"曇り", reading:"くもり", meaning:"cloudy weather"),
            KanjiExample(word:"曇る", reading:"くもる", meaning:"to become cloudy")]),
        Kanji(id:"波", meanings:["wave", "ripple", "undulation"], onyomi:["ハ"], kunyomi:["なみ"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"波", reading:"なみ", meaning:"wave"),
            KanjiExample(word:"波長", reading:"はちょう", meaning:"wavelength")]),
        Kanji(id:"泡", meanings:["bubble", "foam", "froth", "suds"], onyomi:["ホウ"], kunyomi:["あわ"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"泡", reading:"あわ", meaning:"bubble/foam"),
            KanjiExample(word:"泡立て", reading:"あわだて", meaning:"whipping/frothing")]),
        Kanji(id:"踊", meanings:["dance", "jump", "skip"], onyomi:["ヨウ"], kunyomi:["おど"], level:.N4, strokeCount:15, examples:[
            KanjiExample(word:"踊る", reading:"おどる", meaning:"to dance"),
            KanjiExample(word:"踊り", reading:"おどり", meaning:"dance")]),
        Kanji(id:"宮", meanings:["shrine", "palace", "prince", "Shinto"], onyomi:["キュウ", "グウ", "ク"], kunyomi:["みや"], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"宮殿", reading:"きゅうでん", meaning:"palace"),
            KanjiExample(word:"神宮", reading:"じんぐう", meaning:"grand shrine")]),
        Kanji(id:"詩", meanings:["poem", "poetry", "verse"], onyomi:["シ"], kunyomi:[], level:.N4, strokeCount:13, examples:[
            KanjiExample(word:"詩", reading:"し", meaning:"poem"),
            KanjiExample(word:"詩人", reading:"しじん", meaning:"poet")]),
        Kanji(id:"曲", meanings:["bend", "melody", "music", "piece"], onyomi:["キョク"], kunyomi:["ま"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"音楽曲", reading:"おんがくきょく", meaning:"musical piece"),
            KanjiExample(word:"曲がる", reading:"まがる", meaning:"to bend/turn")]),
        Kanji(id:"汽", meanings:["steam", "vapor"], onyomi:["キ"], kunyomi:[], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"汽車", reading:"きしゃ", meaning:"steam train"),
            KanjiExample(word:"汽船", reading:"きせん", meaning:"steamship")]),
        Kanji(id:"団", meanings:["group", "organization", "body", "ball"], onyomi:["ダン", "トン"], kunyomi:[], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"団体", reading:"だんたい", meaning:"group/organization"),
            KanjiExample(word:"布団", reading:"ふとん", meaning:"futon/bedding")]),
        Kanji(id:"勉", meanings:["study", "endeavor", "be diligent"], onyomi:["ベン"], kunyomi:[], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"勉強", reading:"べんきょう", meaning:"study"),
            KanjiExample(word:"勤勉", reading:"きんべん", meaning:"diligence")]),
        Kanji(id:"仲", meanings:["go-between", "relationship", "middleman"], onyomi:["チュウ"], kunyomi:["なか"], level:.N4, strokeCount:6, examples:[
            KanjiExample(word:"仲間", reading:"なかま", meaning:"friend/companion"),
            KanjiExample(word:"仲良し", reading:"なかよし", meaning:"close friendship")]),
        Kanji(id:"昨", meanings:["yesterday", "last", "previous"], onyomi:["サク"], kunyomi:[], level:.N4, strokeCount:9, examples:[
            KanjiExample(word:"昨日", reading:"きのう", meaning:"yesterday"),
            KanjiExample(word:"昨年", reading:"さくねん", meaning:"last year")]),
        Kanji(id:"清", meanings:["clear", "pure", "clean", "refreshing"], onyomi:["セイ", "ショウ"], kunyomi:["きよ"], level:.N4, strokeCount:11, examples:[
            KanjiExample(word:"清い", reading:"きよい", meaning:"clear/pure"),
            KanjiExample(word:"清潔", reading:"せいけつ", meaning:"cleanliness")]),
        Kanji(id:"門", meanings:["gate", "family", "school of thought"], onyomi:["モン"], kunyomi:["かど"], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"門", reading:"もん", meaning:"gate"),
            KanjiExample(word:"専門", reading:"せんもん", meaning:"specialty/major")]),
        Kanji(id:"市", meanings:["city", "market", "town"], onyomi:["シ"], kunyomi:["いち"], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"市", reading:"し", meaning:"city"),
            KanjiExample(word:"市場", reading:"いちば", meaning:"market/marketplace")]),
        Kanji(id:"府", meanings:["prefecture", "government office", "storehouse"], onyomi:["フ"], kunyomi:[], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"府", reading:"ふ", meaning:"urban prefecture"),
            KanjiExample(word:"政府", reading:"せいふ", meaning:"government")]),
        Kanji(id:"庁", meanings:["government office", "agency", "bureau"], onyomi:["チョウ"], kunyomi:[], level:.N4, strokeCount:5, examples:[
            KanjiExample(word:"庁", reading:"ちょう", meaning:"government agency"),
            KanjiExample(word:"官庁", reading:"かんちょう", meaning:"government office")]),
        Kanji(id:"郡", meanings:["county", "district", "rural area"], onyomi:["グン"], kunyomi:[], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"郡", reading:"ぐん", meaning:"county/district"),
            KanjiExample(word:"郡部", reading:"ぐんぶ", meaning:"rural area")]),
        Kanji(id:"班", meanings:["squad", "group", "class", "team"], onyomi:["ハン"], kunyomi:[], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"班", reading:"はん", meaning:"group/squad"),
            KanjiExample(word:"班長", reading:"はんちょう", meaning:"group leader")]),
        Kanji(id:"志", meanings:["will", "intention", "aspiration", "purpose"], onyomi:["シ"], kunyomi:["こころざ"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"志", reading:"こころざし", meaning:"will/aspiration"),
            KanjiExample(word:"志望", reading:"しぼう", meaning:"aspiration")]),
        Kanji(id:"迎", meanings:["welcome", "greet", "receive", "go to meet"], onyomi:["ゲイ"], kunyomi:["むか"], level:.N4, strokeCount:7, examples:[
            KanjiExample(word:"迎える", reading:"むかえる", meaning:"to welcome/greet"),
            KanjiExample(word:"歓迎", reading:"かんげい", meaning:"welcome")]),
        Kanji(id:"案", meanings:["plan", "idea", "proposal", "draft"], onyomi:["アン"], kunyomi:[], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"案", reading:"あん", meaning:"plan/idea"),
            KanjiExample(word:"案内", reading:"あんない", meaning:"guidance/information")]),
        Kanji(id:"倍", meanings:["double", "times", "fold", "multiply"], onyomi:["バイ"], kunyomi:[], level:.N4, strokeCount:10, examples:[
            KanjiExample(word:"倍", reading:"ばい", meaning:"double/times"),
            KanjiExample(word:"二倍", reading:"にばい", meaning:"twice/double")]),
        Kanji(id:"欠", meanings:["lack", "be absent", "miss", "chip"], onyomi:["ケツ"], kunyomi:["か", "か"], level:.N4, strokeCount:4, examples:[
            KanjiExample(word:"欠ける", reading:"かける", meaning:"to be missing/chipped"),
            KanjiExample(word:"欠席", reading:"けっせき", meaning:"absence")]),
        Kanji(id:"季", meanings:["season", "period", "quarter"], onyomi:["キ"], kunyomi:[], level:.N4, strokeCount:8, examples:[
            KanjiExample(word:"季節", reading:"きせつ", meaning:"season"),
            KanjiExample(word:"四季", reading:"しき", meaning:"four seasons")]),
    ]

    // ─────────────────────────────────────────
    // MARK: N3 (375 kanji)
    // ─────────────────────────────────────────
    static let n3: [Kanji] = [
        Kanji(id:"不", meanings:["not","un-","negative"], onyomi:["フ","ブ"], kunyomi:[], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"不安", reading:"ふあん", meaning:"anxiety"),
            KanjiExample(word:"不満", reading:"ふまん", meaning:"dissatisfaction")]),
        Kanji(id:"化", meanings:["change","transform"], onyomi:["カ","ケ"], kunyomi:["ば"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"文化", reading:"ぶんか", meaning:"culture"),
            KanjiExample(word:"変化", reading:"へんか", meaning:"change")]),
        Kanji(id:"代", meanings:["generation","era","substitute"], onyomi:["ダイ","タイ"], kunyomi:["か","よ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"時代", reading:"じだい", meaning:"era / age"),
            KanjiExample(word:"代わり", reading:"かわり", meaning:"substitute")]),
        Kanji(id:"以", meanings:["by means of","compared with"], onyomi:["イ"], kunyomi:[], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"以上", reading:"いじょう", meaning:"more than / above"),
            KanjiExample(word:"以下", reading:"いか", meaning:"less than / below")]),
        Kanji(id:"両", meanings:["both"], onyomi:["リョウ"], kunyomi:[], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"両方", reading:"りょうほう", meaning:"both sides"),
            KanjiExample(word:"両親", reading:"りょうしん", meaning:"parents")]),
        Kanji(id:"全", meanings:["all","whole","complete"], onyomi:["ゼン"], kunyomi:["すべ","まった"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"全部", reading:"ぜんぶ", meaning:"everything"),
            KanjiExample(word:"全体", reading:"ぜんたい", meaning:"whole")]),
        Kanji(id:"別", meanings:["separate","different"], onyomi:["ベツ"], kunyomi:["わか"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"別に", reading:"べつに", meaning:"not particularly"),
            KanjiExample(word:"特別", reading:"とくべつ", meaning:"special")]),
        Kanji(id:"決", meanings:["decide","determine"], onyomi:["ケツ"], kunyomi:["き"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"決める", reading:"きめる", meaning:"to decide"),
            KanjiExample(word:"解決", reading:"かいけつ", meaning:"resolution")]),
        Kanji(id:"形", meanings:["form","shape"], onyomi:["ケイ","ギョウ"], kunyomi:["かた","かたち"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"形", reading:"かたち", meaning:"shape / form"),
            KanjiExample(word:"人形", reading:"にんぎょう", meaning:"doll")]),
        Kanji(id:"実", meanings:["reality","truth","fruit"], onyomi:["ジツ","シツ"], kunyomi:["み","みの"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"実は", reading:"じつは", meaning:"actually"),
            KanjiExample(word:"現実", reading:"げんじつ", meaning:"reality")]),
        Kanji(id:"例", meanings:["example"], onyomi:["レイ"], kunyomi:["たと"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"例えば", reading:"たとえば", meaning:"for example"),
            KanjiExample(word:"例外", reading:"れいがい", meaning:"exception")]),
        Kanji(id:"取", meanings:["take","receive"], onyomi:["シュ"], kunyomi:["と"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"取る", reading:"とる", meaning:"to take"),
            KanjiExample(word:"受け取る", reading:"うけとる", meaning:"to receive")]),
        Kanji(id:"受", meanings:["receive","accept"], onyomi:["ジュ"], kunyomi:["う"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"受ける", reading:"うける", meaning:"to receive"),
            KanjiExample(word:"受験", reading:"じゅけん", meaning:"taking an exam")]),
        Kanji(id:"感", meanings:["feel","sense"], onyomi:["カン"], kunyomi:[], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"感じる", reading:"かんじる", meaning:"to feel"),
            KanjiExample(word:"感謝", reading:"かんしゃ", meaning:"gratitude")]),
        Kanji(id:"場", meanings:["place","location","field"], onyomi:["ジョウ"], kunyomi:["ば"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"場所", reading:"ばしょ", meaning:"place"),
            KanjiExample(word:"広場", reading:"ひろば", meaning:"plaza")]),
        Kanji(id:"終", meanings:["end","finish"], onyomi:["シュウ"], kunyomi:["お"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"終わる", reading:"おわる", meaning:"to end"),
            KanjiExample(word:"最終", reading:"さいしゅう", meaning:"final")]),
        Kanji(id:"始", meanings:["begin","start"], onyomi:["シ"], kunyomi:["はじ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"始める", reading:"はじめる", meaning:"to begin"),
            KanjiExample(word:"開始", reading:"かいし", meaning:"start")]),
        Kanji(id:"考", meanings:["think","consider"], onyomi:["コウ"], kunyomi:["かんが"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"考える", reading:"かんがえる", meaning:"to think"),
            KanjiExample(word:"考え方", reading:"かんがえかた", meaning:"way of thinking")]),
        Kanji(id:"送", meanings:["send","dispatch"], onyomi:["ソウ"], kunyomi:["おく"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"送る", reading:"おくる", meaning:"to send"),
            KanjiExample(word:"送信", reading:"そうしん", meaning:"sending / transmission")]),
        Kanji(id:"返", meanings:["return","reply"], onyomi:["ヘン"], kunyomi:["かえ"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"返す", reading:"かえす", meaning:"to return something"),
            KanjiExample(word:"返事", reading:"へんじ", meaning:"reply")]),
        Kanji(id:"愛", meanings:["love","affection"], onyomi:["アイ"], kunyomi:["めで"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"愛", reading:"あい", meaning:"love"),
            KanjiExample(word:"愛情", reading:"あいじょう", meaning:"affection")]),
        Kanji(id:"悲", meanings:["sad","grieve"], onyomi:["ヒ"], kunyomi:["かな"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"悲しい", reading:"かなしい", meaning:"sad"),
            KanjiExample(word:"悲劇", reading:"ひげき", meaning:"tragedy")]),
        Kanji(id:"怒", meanings:["angry"], onyomi:["ド","ヌ"], kunyomi:["おこ","いか"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"怒る", reading:"おこる", meaning:"to get angry"),
            KanjiExample(word:"怒り", reading:"いかり", meaning:"anger")]),
        Kanji(id:"笑", meanings:["laugh","smile"], onyomi:["ショウ"], kunyomi:["わら","え"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"笑う", reading:"わらう", meaning:"to laugh"),
            KanjiExample(word:"笑顔", reading:"えがお", meaning:"smiling face")]),
        Kanji(id:"泣", meanings:["cry","weep"], onyomi:["キュウ"], kunyomi:["な"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"泣く", reading:"なく", meaning:"to cry"),
            KanjiExample(word:"号泣", reading:"ごうきゅう", meaning:"sobbing")]),
        Kanji(id:"夢", meanings:["dream"], onyomi:["ム"], kunyomi:["ゆめ"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"夢", reading:"ゆめ", meaning:"dream"),
            KanjiExample(word:"夢中", reading:"むちゅう", meaning:"absorbed in")]),
        Kanji(id:"希", meanings:["hope","rare"], onyomi:["キ"], kunyomi:[], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"希望", reading:"きぼう", meaning:"hope"),
            KanjiExample(word:"希少", reading:"きしょう", meaning:"rare")]),
        Kanji(id:"望", meanings:["wish","hope"], onyomi:["ボウ","モウ"], kunyomi:["のぞ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"望む", reading:"のぞむ", meaning:"to wish"),
            KanjiExample(word:"希望", reading:"きぼう", meaning:"hope")]),
        Kanji(id:"求", meanings:["seek","demand"], onyomi:["キュウ"], kunyomi:["もと"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"求める", reading:"もとめる", meaning:"to seek"),
            KanjiExample(word:"要求", reading:"ようきゅう", meaning:"demand")]),
        Kanji(id:"努", meanings:["endeavour"], onyomi:["ド"], kunyomi:["つと"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"努力", reading:"どりょく", meaning:"effort"),
            KanjiExample(word:"努める", reading:"つとめる", meaning:"to endeavour")]),
        Kanji(id:"達", meanings:["reach","attain"], onyomi:["タツ","ダ"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"友達", reading:"ともだち", meaning:"friend"),
            KanjiExample(word:"達成", reading:"たっせい", meaning:"achievement")]),
        Kanji(id:"協", meanings:["cooperate"], onyomi:["キョウ"], kunyomi:[], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"協力", reading:"きょうりょく", meaning:"cooperation"),
            KanjiExample(word:"協会", reading:"きょうかい", meaning:"association")]),
        Kanji(id:"集", meanings:["gather","collect"], onyomi:["シュウ"], kunyomi:["あつ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"集める", reading:"あつめる", meaning:"to collect"),
            KanjiExample(word:"集合", reading:"しゅうごう", meaning:"gathering")]),
        Kanji(id:"続", meanings:["continue"], onyomi:["ゾク"], kunyomi:["つづ"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"続ける", reading:"つづける", meaning:"to continue"),
            KanjiExample(word:"継続", reading:"けいぞく", meaning:"continuation")]),
        Kanji(id:"変", meanings:["change","strange"], onyomi:["ヘン"], kunyomi:["か"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"変わる", reading:"かわる", meaning:"to change"),
            KanjiExample(word:"変化", reading:"へんか", meaning:"change")]),
        Kanji(id:"増", meanings:["increase"], onyomi:["ゾウ"], kunyomi:["ふ","ま"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"増える", reading:"ふえる", meaning:"to increase"),
            KanjiExample(word:"増加", reading:"ぞうか", meaning:"increase")]),
        Kanji(id:"減", meanings:["decrease"], onyomi:["ゲン"], kunyomi:["へ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"減る", reading:"へる", meaning:"to decrease"),
            KanjiExample(word:"削減", reading:"さくげん", meaning:"reduction")]),
        Kanji(id:"進", meanings:["advance"], onyomi:["シン"], kunyomi:["すす"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"進む", reading:"すすむ", meaning:"to advance"),
            KanjiExample(word:"進歩", reading:"しんぽ", meaning:"progress")]),
        Kanji(id:"退", meanings:["retreat","resign"], onyomi:["タイ"], kunyomi:["しりぞ","の"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"退く", reading:"しりぞく", meaning:"to retreat"),
            KanjiExample(word:"退職", reading:"たいしょく", meaning:"retirement")]),
        Kanji(id:"勝", meanings:["win"], onyomi:["ショウ"], kunyomi:["か"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"勝つ", reading:"かつ", meaning:"to win"),
            KanjiExample(word:"勝利", reading:"しょうり", meaning:"victory")]),
        Kanji(id:"負", meanings:["lose","bear"], onyomi:["フ"], kunyomi:["ま","お"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"負ける", reading:"まける", meaning:"to lose"),
            KanjiExample(word:"勝負", reading:"しょうぶ", meaning:"match / contest")]),
        Kanji(id:"争", meanings:["compete","dispute"], onyomi:["ソウ"], kunyomi:["あらそ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"争う", reading:"あらそう", meaning:"to compete"),
            KanjiExample(word:"戦争", reading:"せんそう", meaning:"war")]),
        Kanji(id:"論", meanings:["argument","debate"], onyomi:["ロン"], kunyomi:[], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"議論", reading:"ぎろん", meaning:"debate"),
            KanjiExample(word:"論文", reading:"ろんぶん", meaning:"thesis")]),
        Kanji(id:"議", meanings:["discuss","deliberate"], onyomi:["ギ"], kunyomi:[], level:.N3, strokeCount:20, examples:[
            KanjiExample(word:"会議", reading:"かいぎ", meaning:"meeting"),
            KanjiExample(word:"議論", reading:"ぎろん", meaning:"debate")]),
        Kanji(id:"必", meanings:["necessary"], onyomi:["ヒツ"], kunyomi:["かなら"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"必要", reading:"ひつよう", meaning:"necessary"),
            KanjiExample(word:"必ず", reading:"かならず", meaning:"surely")]),
        Kanji(id:"要", meanings:["need","essential"], onyomi:["ヨウ"], kunyomi:["い"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"必要", reading:"ひつよう", meaning:"necessary"),
            KanjiExample(word:"重要", reading:"じゅうよう", meaning:"important")]),
        Kanji(id:"重", meanings:["heavy","important"], onyomi:["ジュウ","チョウ"], kunyomi:["おも","かさ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"重い", reading:"おもい", meaning:"heavy"),
            KanjiExample(word:"重要", reading:"じゅうよう", meaning:"important")]),
        Kanji(id:"軽", meanings:["light (weight)"], onyomi:["ケイ"], kunyomi:["かる"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"軽い", reading:"かるい", meaning:"light"),
            KanjiExample(word:"軽減", reading:"けいげん", meaning:"reduction")]),
        Kanji(id:"広", meanings:["wide","broad"], onyomi:["コウ"], kunyomi:["ひろ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"広い", reading:"ひろい", meaning:"wide"),
            KanjiExample(word:"広場", reading:"ひろば", meaning:"plaza")]),
        Kanji(id:"深", meanings:["deep"], onyomi:["シン"], kunyomi:["ふか"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"深い", reading:"ふかい", meaning:"deep"),
            KanjiExample(word:"深夜", reading:"しんや", meaning:"late night")]),
        Kanji(id:"細", meanings:["thin","detailed"], onyomi:["サイ"], kunyomi:["ほそ","こま"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"細い", reading:"ほそい", meaning:"thin"),
            KanjiExample(word:"詳細", reading:"しょうさい", meaning:"details")]),
        Kanji(id:"太", meanings:["fat","thick"], onyomi:["タ","タイ"], kunyomi:["ふと"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"太い", reading:"ふとい", meaning:"thick"),
            KanjiExample(word:"太陽", reading:"たいよう", meaning:"sun")]),
        Kanji(id:"速", meanings:["fast","quick"], onyomi:["ソク"], kunyomi:["はや"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"速い", reading:"はやい", meaning:"fast"),
            KanjiExample(word:"速度", reading:"そくど", meaning:"speed")]),
        Kanji(id:"遅", meanings:["slow","late"], onyomi:["チ"], kunyomi:["おそ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"遅い", reading:"おそい", meaning:"slow / late"),
            KanjiExample(word:"遅刻", reading:"ちこく", meaning:"being late")]),
        Kanji(id:"多", meanings:["many"], onyomi:["タ"], kunyomi:["おお"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"多い", reading:"おおい", meaning:"many"),
            KanjiExample(word:"多分", reading:"たぶん", meaning:"probably")]),
        Kanji(id:"少", meanings:["few","little"], onyomi:["ショウ"], kunyomi:["すこ","すく"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"少ない", reading:"すくない", meaning:"few"),
            KanjiExample(word:"少し", reading:"すこし", meaning:"a little")]),
        Kanji(id:"明", meanings:["bright","clear"], onyomi:["メイ","ミョウ"], kunyomi:["あか","あき","あ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"明るい", reading:"あかるい", meaning:"bright"),
            KanjiExample(word:"説明", reading:"せつめい", meaning:"explanation")]),
        Kanji(id:"暗", meanings:["dark"], onyomi:["アン"], kunyomi:["くら"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"暗い", reading:"くらい", meaning:"dark"),
            KanjiExample(word:"暗記", reading:"あんき", meaning:"memorization")]),
        Kanji(id:"正", meanings:["correct","straight"], onyomi:["セイ","ショウ"], kunyomi:["ただ","まさ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"正しい", reading:"ただしい", meaning:"correct"),
            KanjiExample(word:"正直", reading:"しょうじき", meaning:"honest")]),
        Kanji(id:"確", meanings:["certain","confirm"], onyomi:["カク"], kunyomi:["たし"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"確かに", reading:"たしかに", meaning:"certainly"),
            KanjiExample(word:"確認", reading:"かくにん", meaning:"confirmation")]),
        Kanji(id:"験", meanings:["test","experience"], onyomi:["ケン","ゲン"], kunyomi:[], level:.N3, strokeCount:18, examples:[
            KanjiExample(word:"経験", reading:"けいけん", meaning:"experience"),
            KanjiExample(word:"試験", reading:"しけん", meaning:"exam")]),
        Kanji(id:"試", meanings:["try","test"], onyomi:["シ"], kunyomi:["こころ","ため"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"試す", reading:"ためす", meaning:"to try"),
            KanjiExample(word:"試験", reading:"しけん", meaning:"exam")]),
        Kanji(id:"調", meanings:["investigate","tune"], onyomi:["チョウ"], kunyomi:["しら","ととの"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"調べる", reading:"しらべる", meaning:"to investigate"),
            KanjiExample(word:"調子", reading:"ちょうし", meaning:"condition")]),
        Kanji(id:"準", meanings:["standard","semi-"], onyomi:["ジュン"], kunyomi:[], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"準備", reading:"じゅんび", meaning:"preparation"),
            KanjiExample(word:"基準", reading:"きじゅん", meaning:"standard")]),
        Kanji(id:"備", meanings:["prepare","equip"], onyomi:["ビ"], kunyomi:["そな"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"準備", reading:"じゅんび", meaning:"preparation"),
            KanjiExample(word:"設備", reading:"せつび", meaning:"equipment")]),
        Kanji(id:"計", meanings:["plan","measure"], onyomi:["ケイ"], kunyomi:["はか"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"計画", reading:"けいかく", meaning:"plan"),
            KanjiExample(word:"時計", reading:"とけい", meaning:"clock / watch")]),
        Kanji(id:"記", meanings:["record","write"], onyomi:["キ"], kunyomi:["しる"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"記録", reading:"きろく", meaning:"record"),
            KanjiExample(word:"日記", reading:"にっき", meaning:"diary")]),
        Kanji(id:"録", meanings:["record"], onyomi:["ロク"], kunyomi:[], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"記録", reading:"きろく", meaning:"record"),
            KanjiExample(word:"録音", reading:"ろくおん", meaning:"recording")]),
        Kanji(id:"報", meanings:["report","inform"], onyomi:["ホウ"], kunyomi:["むく"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"報告", reading:"ほうこく", meaning:"report"),
            KanjiExample(word:"情報", reading:"じょうほう", meaning:"information")]),
        Kanji(id:"情", meanings:["feelings","condition"], onyomi:["ジョウ","セイ"], kunyomi:["なさ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"情報", reading:"じょうほう", meaning:"information"),
            KanjiExample(word:"感情", reading:"かんじょう", meaning:"emotion")]),
        Kanji(id:"識", meanings:["know","consciousness"], onyomi:["シキ"], kunyomi:[], level:.N3, strokeCount:19, examples:[
            KanjiExample(word:"知識", reading:"ちしき", meaning:"knowledge"),
            KanjiExample(word:"意識", reading:"いしき", meaning:"consciousness")]),
        Kanji(id:"念", meanings:["thought","feeling"], onyomi:["ネン"], kunyomi:[], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"記念", reading:"きねん", meaning:"commemoration"),
            KanjiExample(word:"念", reading:"ねん", meaning:"feeling / thought")]),
        Kanji(id:"願", meanings:["wish","request"], onyomi:["ガン"], kunyomi:["ねが"], level:.N3, strokeCount:19, examples:[
            KanjiExample(word:"願う", reading:"ねがう", meaning:"to wish"),
            KanjiExample(word:"お願い", reading:"おねがい", meaning:"request / please")]),
        Kanji(id:"様", meanings:["manner","Mr/Ms"], onyomi:["ヨウ"], kunyomi:["さま"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"様子", reading:"ようす", meaning:"appearance / situation"),
            KanjiExample(word:"皆様", reading:"みなさま", meaning:"everyone (formal)")]),
        Kanji(id:"原", meanings:["origin","field"], onyomi:["ゲン"], kunyomi:["はら"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"原因", reading:"げんいん", meaning:"cause"),
            KanjiExample(word:"原っぱ", reading:"はらっぱ", meaning:"open field")]),
        Kanji(id:"因", meanings:["cause"], onyomi:["イン"], kunyomi:["よ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"原因", reading:"げんいん", meaning:"cause"),
            KanjiExample(word:"因果", reading:"いんが", meaning:"cause and effect")]),
        Kanji(id:"果", meanings:["result","fruit"], onyomi:["カ"], kunyomi:["は"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"結果", reading:"けっか", meaning:"result"),
            KanjiExample(word:"果物", reading:"くだもの", meaning:"fruit")]),
        Kanji(id:"結", meanings:["tie","conclude"], onyomi:["ケツ"], kunyomi:["むす"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"結果", reading:"けっか", meaning:"result"),
            KanjiExample(word:"結婚", reading:"けっこん", meaning:"marriage")]),
        Kanji(id:"婚", meanings:["marriage"], onyomi:["コン"], kunyomi:[], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"結婚", reading:"けっこん", meaning:"marriage"),
            KanjiExample(word:"離婚", reading:"りこん", meaning:"divorce")]),
        Kanji(id:"産", meanings:["birth","produce"], onyomi:["サン"], kunyomi:["う"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"生産", reading:"せいさん", meaning:"production"),
            KanjiExample(word:"産業", reading:"さんぎょう", meaning:"industry")]),
        Kanji(id:"育", meanings:["raise","grow"], onyomi:["イク"], kunyomi:["そだ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"教育", reading:"きょういく", meaning:"education"),
            KanjiExample(word:"育てる", reading:"そだてる", meaning:"to raise")]),
        Kanji(id:"教", meanings:["teach"], onyomi:["キョウ"], kunyomi:["おし"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"教える", reading:"おしえる", meaning:"to teach"),
            KanjiExample(word:"教育", reading:"きょういく", meaning:"education")]),
        Kanji(id:"配", meanings:["distribute","worry"], onyomi:["ハイ"], kunyomi:["くば"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"心配", reading:"しんぱい", meaning:"worry"),
            KanjiExample(word:"配る", reading:"くばる", meaning:"to distribute")]),
        Kanji(id:"関", meanings:["relation","barrier"], onyomi:["カン"], kunyomi:["せき"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"関係", reading:"かんけい", meaning:"relationship"),
            KanjiExample(word:"関心", reading:"かんしん", meaning:"interest")]),
        Kanji(id:"係", meanings:["relationship"], onyomi:["ケイ"], kunyomi:["かかり"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"関係", reading:"かんけい", meaning:"relationship"),
            KanjiExample(word:"係", reading:"かかり", meaning:"person in charge")]),
        Kanji(id:"内", meanings:["inside","within"], onyomi:["ナイ","ダイ"], kunyomi:["うち"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"以内", reading:"いない", meaning:"within"),
            KanjiExample(word:"国内", reading:"こくない", meaning:"domestic")]),
        Kanji(id:"際", meanings:["occasion","edge"], onyomi:["サイ"], kunyomi:["きわ"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"国際", reading:"こくさい", meaning:"international"),
            KanjiExample(word:"実際", reading:"じっさい", meaning:"in reality")]),
        Kanji(id:"間", meanings:["interval","between"], onyomi:["カン","ケン"], kunyomi:["あいだ","ま"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"時間", reading:"じかん", meaning:"time"),
            KanjiExample(word:"間", reading:"あいだ", meaning:"between")]),
        Kanji(id:"対", meanings:["against","pair"], onyomi:["タイ","ツイ"], kunyomi:[], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"対応", reading:"たいおう", meaning:"response"),
            KanjiExample(word:"反対", reading:"はんたい", meaning:"opposition")]),
        Kanji(id:"反", meanings:["anti","opposite"], onyomi:["ハン","ホン","タン"], kunyomi:["そ"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"反対", reading:"はんたい", meaning:"opposition"),
            KanjiExample(word:"反省", reading:"はんせい", meaning:"reflection")]),
        Kanji(id:"表", meanings:["surface","express"], onyomi:["ヒョウ"], kunyomi:["おもて","あらわ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"表現", reading:"ひょうげん", meaning:"expression"),
            KanjiExample(word:"発表", reading:"はっぴょう", meaning:"presentation")]),
        Kanji(id:"現", meanings:["appear","present"], onyomi:["ゲン"], kunyomi:["あらわ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"現在", reading:"げんざい", meaning:"now"),
            KanjiExample(word:"現れる", reading:"あらわれる", meaning:"to appear")]),
        Kanji(id:"過", meanings:["pass","exceed"], onyomi:["カ"], kunyomi:["す","あやま"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"過去", reading:"かこ", meaning:"the past"),
            KanjiExample(word:"通過", reading:"つうか", meaning:"passing through")]),
        Kanji(id:"比", meanings:["compare"], onyomi:["ヒ"], kunyomi:["くら"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"比べる", reading:"くらべる", meaning:"to compare"),
            KanjiExample(word:"比率", reading:"ひりつ", meaning:"ratio")]),
        Kanji(id:"率", meanings:["rate","lead"], onyomi:["リツ","ソツ"], kunyomi:["ひき"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"効率", reading:"こうりつ", meaning:"efficiency"),
            KanjiExample(word:"確率", reading:"かくりつ", meaning:"probability")]),
        Kanji(id:"点", meanings:["point","score"], onyomi:["テン"], kunyomi:[], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"点数", reading:"てんすう", meaning:"score"),
            KanjiExample(word:"問題点", reading:"もんだいてん", meaning:"problem point")]),
        Kanji(id:"線", meanings:["line"], onyomi:["セン"], kunyomi:[], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"路線", reading:"ろせん", meaning:"route / line"),
            KanjiExample(word:"線路", reading:"せんろ", meaning:"railway track")]),
        Kanji(id:"号", meanings:["number","signal"], onyomi:["ゴウ"], kunyomi:[], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"番号", reading:"ばんごう", meaning:"number"),
            KanjiExample(word:"信号", reading:"しんごう", meaning:"traffic signal")]),
        Kanji(id:"番", meanings:["number","turn"], onyomi:["バン"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"番号", reading:"ばんごう", meaning:"number"),
            KanjiExample(word:"一番", reading:"いちばん", meaning:"number one / most")]),
        Kanji(id:"列", meanings:["row","line"], onyomi:["レツ"], kunyomi:["なら"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"列", reading:"れつ", meaning:"line / row"),
            KanjiExample(word:"行列", reading:"ぎょうれつ", meaning:"queue / matrix")]),
        Kanji(id:"並", meanings:["line up"], onyomi:["ヘイ"], kunyomi:["なら"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"並ぶ", reading:"ならぶ", meaning:"to line up"),
            KanjiExample(word:"並べる", reading:"ならべる", meaning:"to arrange")]),
        Kanji(id:"医", meanings:["doctor", "medicine"], onyomi:["イ"], kunyomi:[], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"医者", reading:"いしゃ", meaning:"doctor"),
            KanjiExample(word:"医学", reading:"いがく", meaning:"medicine/medical science")]),
        Kanji(id:"員", meanings:["member", "staff"], onyomi:["イン"], kunyomi:[], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"店員", reading:"てんいん", meaning:"store clerk"),
            KanjiExample(word:"会員", reading:"かいいん", meaning:"member")]),
        Kanji(id:"温", meanings:["warm"], onyomi:["オン"], kunyomi:["あたた", "ぬる"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"温かい", reading:"あたたかい", meaning:"warm"),
            KanjiExample(word:"温度", reading:"おんど", meaning:"temperature")]),
        Kanji(id:"横", meanings:["sideways", "beside"], onyomi:["オウ"], kunyomi:["よこ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"横断", reading:"おうだん", meaning:"crossing"),
            KanjiExample(word:"横", reading:"よこ", meaning:"side/beside")]),
        Kanji(id:"回", meanings:["turn", "times"], onyomi:["カイ", "エ"], kunyomi:["まわ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"回転", reading:"かいてん", meaning:"rotation"),
            KanjiExample(word:"何回", reading:"なんかい", meaning:"how many times")]),
        Kanji(id:"館", meanings:["building", "hall"], onyomi:["カン"], kunyomi:["やかた"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"図書館", reading:"としょかん", meaning:"library"),
            KanjiExample(word:"美術館", reading:"びじゅつかん", meaning:"art museum")]),
        Kanji(id:"機", meanings:["machine", "opportunity"], onyomi:["キ"], kunyomi:["はた"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"機会", reading:"きかい", meaning:"opportunity"),
            KanjiExample(word:"飛行機", reading:"ひこうき", meaning:"airplane")]),
        Kanji(id:"客", meanings:["guest", "customer"], onyomi:["キャク", "カク"], kunyomi:[], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"お客さん", reading:"おきゃくさん", meaning:"guest/customer"),
            KanjiExample(word:"客室", reading:"きゃくしつ", meaning:"guest room")]),
        Kanji(id:"銀", meanings:["silver"], onyomi:["ギン"], kunyomi:["しろがね"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"銀行", reading:"ぎんこう", meaning:"bank"),
            KanjiExample(word:"銀色", reading:"ぎんいろ", meaning:"silver color")]),
        Kanji(id:"具", meanings:["tool", "implement"], onyomi:["グ"], kunyomi:["そな"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"道具", reading:"どうぐ", meaning:"tool"),
            KanjiExample(word:"具体的", reading:"ぐたいてき", meaning:"concrete/specific")]),
        Kanji(id:"薬", meanings:["medicine", "drug"], onyomi:["ヤク"], kunyomi:["くすり"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"薬局", reading:"やっきょく", meaning:"pharmacy"),
            KanjiExample(word:"薬", reading:"くすり", meaning:"medicine")]),
        Kanji(id:"組", meanings:["group", "assemble"], onyomi:["ソ"], kunyomi:["く"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"組合", reading:"くみあい", meaning:"union/association"),
            KanjiExample(word:"番組", reading:"ばんぐみ", meaning:"TV program")]),
        Kanji(id:"建", meanings:["build", "construct"], onyomi:["ケン", "コン"], kunyomi:["た"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"建物", reading:"たてもの", meaning:"building"),
            KanjiExample(word:"建設", reading:"けんせつ", meaning:"construction")]),
        Kanji(id:"県", meanings:["prefecture"], onyomi:["ケン"], kunyomi:[], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"県庁", reading:"けんちょう", meaning:"prefectural office"),
            KanjiExample(word:"神奈川県", reading:"かながわけん", meaning:"Kanagawa Prefecture")]),
        Kanji(id:"個", meanings:["individual", "item"], onyomi:["コ"], kunyomi:[], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"個人", reading:"こじん", meaning:"individual"),
            KanjiExample(word:"一個", reading:"いっこ", meaning:"one item")]),
        Kanji(id:"公", meanings:["public", "official"], onyomi:["コウ", "ク"], kunyomi:["おおやけ"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"公園", reading:"こうえん", meaning:"park"),
            KanjiExample(word:"公共", reading:"こうきょう", meaning:"public")]),
        Kanji(id:"工", meanings:["craft", "work"], onyomi:["コウ", "ク"], kunyomi:[], level:.N3, strokeCount:3, examples:[
            KanjiExample(word:"工場", reading:"こうじょう", meaning:"factory"),
            KanjiExample(word:"工業", reading:"こうぎょう", meaning:"industry")]),
        Kanji(id:"根", meanings:["root", "origin"], onyomi:["コン"], kunyomi:["ね"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"根本", reading:"こんぽん", meaning:"root/basis"),
            KanjiExample(word:"根拠", reading:"こんきょ", meaning:"basis/grounds")]),
        Kanji(id:"最", meanings:["most", "highest"], onyomi:["サイ"], kunyomi:["もっと"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"最初", reading:"さいしょ", meaning:"first"),
            KanjiExample(word:"最高", reading:"さいこう", meaning:"highest/best")]),
        Kanji(id:"坂", meanings:["slope", "hill"], onyomi:["ハン"], kunyomi:["さか"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"坂道", reading:"さかみち", meaning:"sloping road"),
            KanjiExample(word:"上り坂", reading:"のぼりざか", meaning:"uphill slope")]),
        Kanji(id:"残", meanings:["remain", "leftover"], onyomi:["ザン"], kunyomi:["のこ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"残る", reading:"のこる", meaning:"to remain"),
            KanjiExample(word:"残念", reading:"ざんねん", meaning:"regrettable")]),
        Kanji(id:"仕", meanings:["serve", "do"], onyomi:["シ", "ジ"], kunyomi:["つか"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"仕事", reading:"しごと", meaning:"work/job"),
            KanjiExample(word:"仕方", reading:"しかた", meaning:"way/method")]),
        Kanji(id:"写", meanings:["copy", "photograph"], onyomi:["シャ"], kunyomi:["うつ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"写真", reading:"しゃしん", meaning:"photograph"),
            KanjiExample(word:"写す", reading:"うつす", meaning:"to copy/photograph")]),
        Kanji(id:"主", meanings:["master", "main"], onyomi:["シュ", "ス"], kunyomi:["ぬし", "おも"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"主人", reading:"しゅじん", meaning:"husband/master"),
            KanjiExample(word:"主要", reading:"しゅよう", meaning:"main/principal")]),
        Kanji(id:"住", meanings:["reside", "live"], onyomi:["ジュウ"], kunyomi:["す"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"住所", reading:"じゅうしょ", meaning:"address"),
            KanjiExample(word:"住む", reading:"すむ", meaning:"to live/reside")]),
        Kanji(id:"所", meanings:["place", "part"], onyomi:["ショ"], kunyomi:["ところ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"場所", reading:"ばしょ", meaning:"place"),
            KanjiExample(word:"住所", reading:"じゅうしょ", meaning:"address")]),
        Kanji(id:"初", meanings:["first", "beginning"], onyomi:["ショ"], kunyomi:["はじ", "はつ", "うい"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"最初", reading:"さいしょ", meaning:"first"),
            KanjiExample(word:"初めて", reading:"はじめて", meaning:"for the first time")]),
        Kanji(id:"処", meanings:["deal with", "place"], onyomi:["ショ"], kunyomi:["とこ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"処理", reading:"しょり", meaning:"processing"),
            KanjiExample(word:"対処", reading:"たいしょ", meaning:"coping/dealing with")]),
        Kanji(id:"常", meanings:["ordinary", "always"], onyomi:["ジョウ"], kunyomi:["つね", "とこ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"日常", reading:"にちじょう", meaning:"everyday"),
            KanjiExample(word:"非常に", reading:"ひじょうに", meaning:"extremely")]),
        Kanji(id:"色", meanings:["color"], onyomi:["ショク", "シキ"], kunyomi:["いろ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"色々", reading:"いろいろ", meaning:"various"),
            KanjiExample(word:"色", reading:"いろ", meaning:"color")]),
        Kanji(id:"申", meanings:["say humbly", "report"], onyomi:["シン"], kunyomi:["もう"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"申し訳", reading:"もうしわけ", meaning:"apology/excuse"),
            KanjiExample(word:"申し込む", reading:"もうしこむ", meaning:"to apply")]),
        Kanji(id:"真", meanings:["true", "genuine"], onyomi:["シン"], kunyomi:["ま", "まこと"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"真剣", reading:"しんけん", meaning:"serious"),
            KanjiExample(word:"真実", reading:"しんじつ", meaning:"truth")]),
        Kanji(id:"神", meanings:["god", "spirit"], onyomi:["シン", "ジン"], kunyomi:["かみ", "かん"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"神様", reading:"かみさま", meaning:"god"),
            KanjiExample(word:"神社", reading:"じんじゃ", meaning:"Shinto shrine")]),
        Kanji(id:"声", meanings:["voice", "sound"], onyomi:["セイ", "ショウ"], kunyomi:["こえ"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"声", reading:"こえ", meaning:"voice"),
            KanjiExample(word:"大声", reading:"おおごえ", meaning:"loud voice")]),
        Kanji(id:"席", meanings:["seat", "place"], onyomi:["セキ"], kunyomi:[], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"席", reading:"せき", meaning:"seat"),
            KanjiExample(word:"出席", reading:"しゅっせき", meaning:"attendance")]),
        Kanji(id:"選", meanings:["choose", "select"], onyomi:["セン"], kunyomi:["えら"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"選ぶ", reading:"えらぶ", meaning:"to choose"),
            KanjiExample(word:"選手", reading:"せんしゅ", meaning:"athlete/player")]),
        Kanji(id:"題", meanings:["topic", "title"], onyomi:["ダイ"], kunyomi:[], level:.N3, strokeCount:18, examples:[
            KanjiExample(word:"問題", reading:"もんだい", meaning:"problem"),
            KanjiExample(word:"題名", reading:"だいめい", meaning:"title")]),
        Kanji(id:"注", meanings:["pour", "attention"], onyomi:["チュウ"], kunyomi:["そそ", "つ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"注意", reading:"ちゅうい", meaning:"attention/caution"),
            KanjiExample(word:"注文", reading:"ちゅうもん", meaning:"order")]),
        Kanji(id:"低", meanings:["low"], onyomi:["テイ"], kunyomi:["ひく"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"低い", reading:"ひくい", meaning:"low"),
            KanjiExample(word:"低下", reading:"ていか", meaning:"decline/drop")]),
        Kanji(id:"定", meanings:["fixed", "determine"], onyomi:["テイ", "ジョウ"], kunyomi:["さだ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"決定", reading:"けってい", meaning:"decision"),
            KanjiExample(word:"定期", reading:"ていき", meaning:"regular/fixed-term")]),
        Kanji(id:"庭", meanings:["garden"], onyomi:["テイ"], kunyomi:["にわ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"庭", reading:"にわ", meaning:"garden"),
            KanjiExample(word:"家庭", reading:"かてい", meaning:"household/family")]),
        Kanji(id:"都", meanings:["capital", "metropolis"], onyomi:["ト", "ツ"], kunyomi:["みやこ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"都市", reading:"とし", meaning:"city"),
            KanjiExample(word:"都合", reading:"つごう", meaning:"convenience/circumstance")]),
        Kanji(id:"認", meanings:["recognize", "admit"], onyomi:["ニン"], kunyomi:["みと"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"認める", reading:"みとめる", meaning:"to recognize"),
            KanjiExample(word:"確認", reading:"かくにん", meaning:"confirmation")]),
        Kanji(id:"農", meanings:["agriculture", "farming"], onyomi:["ノウ"], kunyomi:[], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"農業", reading:"のうぎょう", meaning:"agriculture"),
            KanjiExample(word:"農家", reading:"のうか", meaning:"farming household")]),
        Kanji(id:"部", meanings:["part", "department"], onyomi:["ブ", "ホ"], kunyomi:["べ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"部分", reading:"ぶぶん", meaning:"part"),
            KanjiExample(word:"全部", reading:"ぜんぶ", meaning:"everything")]),
        Kanji(id:"訪", meanings:["visit"], onyomi:["ホウ"], kunyomi:["おとず", "たず"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"訪問", reading:"ほうもん", meaning:"visit"),
            KanjiExample(word:"訪れる", reading:"おとずれる", meaning:"to visit")]),
        Kanji(id:"末", meanings:["end", "tip"], onyomi:["マツ", "バツ"], kunyomi:["すえ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"週末", reading:"しゅうまつ", meaning:"weekend"),
            KanjiExample(word:"年末", reading:"ねんまつ", meaning:"year-end")]),
        Kanji(id:"満", meanings:["full", "satisfy"], onyomi:["マン"], kunyomi:["み"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"満足", reading:"まんぞく", meaning:"satisfaction"),
            KanjiExample(word:"満員", reading:"まんいん", meaning:"full capacity")]),
        Kanji(id:"役", meanings:["role", "service"], onyomi:["ヤク", "エキ"], kunyomi:[], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"役に立つ", reading:"やくにたつ", meaning:"to be useful"),
            KanjiExample(word:"役所", reading:"やくしょ", meaning:"government office")]),
        Kanji(id:"予", meanings:["beforehand", "prepare"], onyomi:["ヨ"], kunyomi:["あらかじ"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"予定", reading:"よてい", meaning:"schedule/plan"),
            KanjiExample(word:"予約", reading:"よやく", meaning:"reservation")]),
        Kanji(id:"用", meanings:["use", "purpose"], onyomi:["ヨウ"], kunyomi:["もち"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"用意", reading:"ようい", meaning:"preparation"),
            KanjiExample(word:"用事", reading:"ようじ", meaning:"errand/business")]),
        Kanji(id:"路", meanings:["road", "path"], onyomi:["ロ"], kunyomi:["じ"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"道路", reading:"どうろ", meaning:"road"),
            KanjiExample(word:"路線", reading:"ろせん", meaning:"route/line")]),
        Kanji(id:"和", meanings:["peace", "Japan"], onyomi:["ワ"], kunyomi:["やわ", "なご"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"和食", reading:"わしょく", meaning:"Japanese food"),
            KanjiExample(word:"平和", reading:"へいわ", meaning:"peace")]),
        Kanji(id:"期", meanings:["period", "term"], onyomi:["キ", "ゴ"], kunyomi:["ご"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"期待", reading:"きたい", meaning:"expectation"),
            KanjiExample(word:"学期", reading:"がっき", meaning:"school term")]),
        Kanji(id:"曜", meanings:["day of week"], onyomi:["ヨウ"], kunyomi:[], level:.N3, strokeCount:18, examples:[
            KanjiExample(word:"曜日", reading:"ようび", meaning:"day of the week"),
            KanjiExample(word:"月曜日", reading:"げつようび", meaning:"Monday")]),
        Kanji(id:"夕", meanings:["evening"], onyomi:["セキ"], kunyomi:["ゆう"], level:.N3, strokeCount:3, examples:[
            KanjiExample(word:"夕食", reading:"ゆうしょく", meaning:"dinner"),
            KanjiExample(word:"夕方", reading:"ゆうがた", meaning:"evening")]),
        Kanji(id:"官", meanings:["government", "official"], onyomi:["カン"], kunyomi:[], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"官庁", reading:"かんちょう", meaning:"government office"),
            KanjiExample(word:"警官", reading:"けいかん", meaning:"police officer")]),
        Kanji(id:"歌", meanings:["song", "sing"], onyomi:["カ"], kunyomi:["うた"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"歌う", reading:"うたう", meaning:"to sing"),
            KanjiExample(word:"歌手", reading:"かしゅ", meaning:"singer")]),
        Kanji(id:"毎", meanings:["every"], onyomi:["マイ"], kunyomi:[], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"毎日", reading:"まいにち", meaning:"every day"),
            KanjiExample(word:"毎年", reading:"まいとし", meaning:"every year")]),
        Kanji(id:"空", meanings:["sky", "empty"], onyomi:["クウ"], kunyomi:["そら", "あ", "から"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"空", reading:"そら", meaning:"sky"),
            KanjiExample(word:"空港", reading:"くうこう", meaning:"airport")]),
        Kanji(id:"島", meanings:["island"], onyomi:["トウ"], kunyomi:["しま"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"島", reading:"しま", meaning:"island"),
            KanjiExample(word:"半島", reading:"はんとう", meaning:"peninsula")]),
        Kanji(id:"岸", meanings:["shore", "bank"], onyomi:["ガン"], kunyomi:["きし"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"海岸", reading:"かいがん", meaning:"coast/beach"),
            KanjiExample(word:"川岸", reading:"かわぎし", meaning:"riverbank")]),
        Kanji(id:"民", meanings:["people", "nation"], onyomi:["ミン"], kunyomi:["たみ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"国民", reading:"こくみん", meaning:"citizen"),
            KanjiExample(word:"民族", reading:"みんぞく", meaning:"ethnic group")]),
        Kanji(id:"階", meanings:["floor", "step"], onyomi:["カイ"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"階段", reading:"かいだん", meaning:"stairs"),
            KanjiExample(word:"三階", reading:"さんがい", meaning:"third floor")]),
        Kanji(id:"堂", meanings:["hall", "temple"], onyomi:["ドウ"], kunyomi:[], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"食堂", reading:"しょくどう", meaning:"cafeteria/dining hall"),
            KanjiExample(word:"講堂", reading:"こうどう", meaning:"auditorium")]),
        Kanji(id:"室", meanings:["room"], onyomi:["シツ"], kunyomi:["むろ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"教室", reading:"きょうしつ", meaning:"classroom"),
            KanjiExample(word:"室内", reading:"しつない", meaning:"indoors")]),
        Kanji(id:"宿", meanings:["lodging", "inn"], onyomi:["シュク"], kunyomi:["やど"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"宿泊", reading:"しゅくはく", meaning:"lodging/staying"),
            KanjiExample(word:"宿題", reading:"しゅくだい", meaning:"homework")]),
        Kanji(id:"景", meanings:["scenery", "scene"], onyomi:["ケイ"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"景色", reading:"けしき", meaning:"scenery"),
            KanjiExample(word:"背景", reading:"はいけい", meaning:"background")]),
        Kanji(id:"観", meanings:["view", "observe"], onyomi:["カン"], kunyomi:["み"], level:.N3, strokeCount:18, examples:[
            KanjiExample(word:"観光", reading:"かんこう", meaning:"sightseeing"),
            KanjiExample(word:"観察", reading:"かんさつ", meaning:"observation")]),
        Kanji(id:"泊", meanings:["stay overnight"], onyomi:["ハク"], kunyomi:["と"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"一泊", reading:"いっぱく", meaning:"one night's stay"),
            KanjiExample(word:"泊まる", reading:"とまる", meaning:"to stay overnight")]),
        Kanji(id:"米", meanings:["rice", "America"], onyomi:["ベイ", "マイ"], kunyomi:["こめ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"米", reading:"こめ", meaning:"rice"),
            KanjiExample(word:"米国", reading:"べいこく", meaning:"USA")]),
        Kanji(id:"各", meanings:["each", "every"], onyomi:["カク"], kunyomi:[], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"各自", reading:"かくじ", meaning:"each person"),
            KanjiExample(word:"各地", reading:"かくち", meaning:"various places")]),
        Kanji(id:"直", meanings:["direct", "straight"], onyomi:["チョク", "ジキ"], kunyomi:["なお", "ただ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"直接", reading:"ちょくせつ", meaning:"directly"),
            KanjiExample(word:"直す", reading:"なおす", meaning:"to fix/correct")]),
        Kanji(id:"類", meanings:["kind", "type", "similar"], onyomi:["ルイ"], kunyomi:["たぐ"], level:.N3, strokeCount:18, examples:[
            KanjiExample(word:"種類", reading:"しゅるい", meaning:"type/variety"),
            KanjiExample(word:"人類", reading:"じんるい", meaning:"humankind")]),
        Kanji(id:"種", meanings:["kind", "seed"], onyomi:["シュ"], kunyomi:["たね"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"種類", reading:"しゅるい", meaning:"type/variety"),
            KanjiExample(word:"種", reading:"たね", meaning:"seed")]),
        Kanji(id:"折", meanings:["fold", "break", "occasion"], onyomi:["セツ"], kunyomi:["お"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"折れる", reading:"おれる", meaning:"to break/fold"),
            KanjiExample(word:"折り紙", reading:"おりがみ", meaning:"origami")]),
        Kanji(id:"昔", meanings:["long ago", "past"], onyomi:["セキ", "シャク"], kunyomi:["むかし"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"昔", reading:"むかし", meaning:"old times"),
            KanjiExample(word:"昔話", reading:"むかしばなし", meaning:"old tale/folklore")]),
        Kanji(id:"辺", meanings:["area", "vicinity"], onyomi:["ヘン"], kunyomi:["あた", "べ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"近辺", reading:"きんぺん", meaning:"neighborhood"),
            KanjiExample(word:"この辺", reading:"このへん", meaning:"around here")]),
        Kanji(id:"側", meanings:["side", "beside"], onyomi:["ソク"], kunyomi:["がわ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"右側", reading:"みぎがわ", meaning:"right side"),
            KanjiExample(word:"側面", reading:"そくめん", meaning:"side/aspect")]),
        Kanji(id:"幸", meanings:["happiness", "fortune"], onyomi:["コウ"], kunyomi:["しあわ", "さち"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"幸せ", reading:"しあわせ", meaning:"happiness"),
            KanjiExample(word:"幸運", reading:"こううん", meaning:"good luck")]),
        Kanji(id:"驚", meanings:["surprised", "astonished"], onyomi:["キョウ"], kunyomi:["おどろ"], level:.N3, strokeCount:22, examples:[
            KanjiExample(word:"驚く", reading:"おどろく", meaning:"to be surprised"),
            KanjiExample(word:"驚き", reading:"おどろき", meaning:"surprise")]),
        Kanji(id:"守", meanings:["protect", "obey"], onyomi:["シュ", "ス"], kunyomi:["まも", "も"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"守る", reading:"まもる", meaning:"to protect"),
            KanjiExample(word:"守衛", reading:"しゅえい", meaning:"security guard")]),
        Kanji(id:"付", meanings:["attach", "accompany"], onyomi:["フ"], kunyomi:["つ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"付ける", reading:"つける", meaning:"to attach"),
            KanjiExample(word:"受け付け", reading:"うけつけ", meaning:"reception desk")]),
        Kanji(id:"絵", meanings:["picture", "painting"], onyomi:["カイ", "エ"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"絵", reading:"え", meaning:"picture/painting"),
            KanjiExample(word:"絵本", reading:"えほん", meaning:"picture book")]),
        Kanji(id:"漫", meanings:["cartoon", "manga", "aimless"], onyomi:["マン"], kunyomi:[], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"漫画", reading:"まんが", meaning:"manga/comics"),
            KanjiExample(word:"漫然", reading:"まんぜん", meaning:"vaguely")]),
        Kanji(id:"遊", meanings:["play", "enjoy"], onyomi:["ユウ"], kunyomi:["あそ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"遊ぶ", reading:"あそぶ", meaning:"to play"),
            KanjiExample(word:"遊園地", reading:"ゆうえんち", meaning:"amusement park")]),
        Kanji(id:"宝", meanings:["treasure"], onyomi:["ホウ"], kunyomi:["たから"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"宝物", reading:"たからもの", meaning:"treasure"),
            KanjiExample(word:"宝くじ", reading:"たからくじ", meaning:"lottery")]),
        Kanji(id:"街", meanings:["street", "town"], onyomi:["ガイ", "カイ"], kunyomi:["まち"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"街", reading:"まち", meaning:"town/street"),
            KanjiExample(word:"商店街", reading:"しょうてんがい", meaning:"shopping street")]),
        Kanji(id:"角", meanings:["corner", "angle"], onyomi:["カク"], kunyomi:["かど", "つの"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"角", reading:"かど", meaning:"corner"),
            KanjiExample(word:"三角", reading:"さんかく", meaning:"triangle")]),
        Kanji(id:"岩", meanings:["rock", "crag"], onyomi:["ガン"], kunyomi:["いわ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"岩", reading:"いわ", meaning:"rock"),
            KanjiExample(word:"岩石", reading:"がんせき", meaning:"rock/stone")]),
        Kanji(id:"橋", meanings:["bridge"], onyomi:["キョウ"], kunyomi:["はし"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"橋", reading:"はし", meaning:"bridge"),
            KanjiExample(word:"橋渡し", reading:"はしわたし", meaning:"mediation")]),
        Kanji(id:"血", meanings:["blood"], onyomi:["ケツ"], kunyomi:["ち"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"血", reading:"ち", meaning:"blood"),
            KanjiExample(word:"血圧", reading:"けつあつ", meaning:"blood pressure")]),
        Kanji(id:"好", meanings:["like", "fond"], onyomi:["コウ"], kunyomi:["す", "この"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"好き", reading:"すき", meaning:"like"),
            KanjiExample(word:"好意", reading:"こうい", meaning:"goodwill")]),
        Kanji(id:"普", meanings:["general", "widespread"], onyomi:["フ"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"普通", reading:"ふつう", meaning:"ordinary/normal"),
            KanjiExample(word:"普及", reading:"ふきゅう", meaning:"spread/diffusion")]),
        Kanji(id:"仏", meanings:["Buddha", "France"], onyomi:["ブツ", "フツ"], kunyomi:["ほとけ"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"仏教", reading:"ぶっきょう", meaning:"Buddhism"),
            KanjiExample(word:"仏壇", reading:"ぶつだん", meaning:"Buddhist altar")]),
        Kanji(id:"平", meanings:["flat", "peace"], onyomi:["ヘイ", "ビョウ"], kunyomi:["たい", "ひら"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"平和", reading:"へいわ", meaning:"peace"),
            KanjiExample(word:"平均", reading:"へいきん", meaning:"average")]),
        Kanji(id:"便", meanings:["convenient", "mail"], onyomi:["ベン", "ビン"], kunyomi:["たよ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"便利", reading:"べんり", meaning:"convenient"),
            KanjiExample(word:"不便", reading:"ふべん", meaning:"inconvenient")]),
        Kanji(id:"放", meanings:["release", "broadcast"], onyomi:["ホウ"], kunyomi:["はな", "はな"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"放送", reading:"ほうそう", meaning:"broadcast"),
            KanjiExample(word:"解放", reading:"かいほう", meaning:"liberation")]),
        Kanji(id:"名", meanings:["name", "fame"], onyomi:["メイ", "ミョウ"], kunyomi:["な"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"名前", reading:"なまえ", meaning:"name"),
            KanjiExample(word:"有名", reading:"ゆうめい", meaning:"famous")]),
        Kanji(id:"歴", meanings:["history", "experience"], onyomi:["レキ"], kunyomi:[], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"歴史", reading:"れきし", meaning:"history"),
            KanjiExample(word:"経歴", reading:"けいれき", meaning:"career/background")]),
        Kanji(id:"練", meanings:["practice", "knead"], onyomi:["レン"], kunyomi:["ね"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"練習", reading:"れんしゅう", meaning:"practice"),
            KanjiExample(word:"訓練", reading:"くんれん", meaning:"training")]),
        Kanji(id:"老", meanings:["old", "aged"], onyomi:["ロウ"], kunyomi:["お", "ふ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"老人", reading:"ろうじん", meaning:"elderly person"),
            KanjiExample(word:"老後", reading:"ろうご", meaning:"old age")]),
        Kanji(id:"式", meanings:["ceremony", "formula"], onyomi:["シキ"], kunyomi:[], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"式", reading:"しき", meaning:"ceremony"),
            KanjiExample(word:"方式", reading:"ほうしき", meaning:"method/formula")]),
        Kanji(id:"世", meanings:["world", "generation"], onyomi:["セ", "セイ"], kunyomi:["よ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"世界", reading:"せかい", meaning:"world"),
            KanjiExample(word:"世の中", reading:"よのなか", meaning:"society")]),
        Kanji(id:"早", meanings:["early", "fast"], onyomi:["ソウ", "サッ"], kunyomi:["はや"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"早い", reading:"はやい", meaning:"early/fast"),
            KanjiExample(word:"早朝", reading:"そうちょう", meaning:"early morning")]),
        Kanji(id:"草", meanings:["grass", "draft"], onyomi:["ソウ"], kunyomi:["くさ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"草", reading:"くさ", meaning:"grass"),
            KanjiExample(word:"草原", reading:"そうげん", meaning:"grassland")]),
        Kanji(id:"台", meanings:["stand", "platform"], onyomi:["ダイ", "タイ"], kunyomi:[], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"台風", reading:"たいふう", meaning:"typhoon"),
            KanjiExample(word:"舞台", reading:"ぶたい", meaning:"stage")]),
        Kanji(id:"短", meanings:["short"], onyomi:["タン"], kunyomi:["みじか"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"短い", reading:"みじかい", meaning:"short"),
            KanjiExample(word:"短所", reading:"たんしょ", meaning:"weak point")]),
        Kanji(id:"町", meanings:["town", "block"], onyomi:["チョウ"], kunyomi:["まち"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"町", reading:"まち", meaning:"town"),
            KanjiExample(word:"下町", reading:"したまち", meaning:"downtown")]),
        Kanji(id:"家", meanings:["house", "family"], onyomi:["カ", "ケ"], kunyomi:["いえ", "や"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"家族", reading:"かぞく", meaning:"family"),
            KanjiExample(word:"家", reading:"いえ", meaning:"house")]),
        Kanji(id:"犬", meanings:["dog"], onyomi:["ケン"], kunyomi:["いぬ"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"犬", reading:"いぬ", meaning:"dog"),
            KanjiExample(word:"番犬", reading:"ばんけん", meaning:"guard dog")]),
        Kanji(id:"午", meanings:["noon"], onyomi:["ゴ"], kunyomi:[], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"午前", reading:"ごぜん", meaning:"AM"),
            KanjiExample(word:"午後", reading:"ごご", meaning:"PM")]),
        Kanji(id:"屋", meanings:["shop", "roof", "house"], onyomi:["オク"], kunyomi:["や", "やね"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"本屋", reading:"ほんや", meaning:"bookstore"),
            KanjiExample(word:"屋根", reading:"やね", meaning:"roof")]),
        Kanji(id:"然", meanings:["so", "nature"], onyomi:["ゼン", "ネン"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"当然", reading:"とうぜん", meaning:"naturally"),
            KanjiExample(word:"自然", reading:"しぜん", meaning:"nature")]),
        Kanji(id:"卒", meanings:["graduate", "finish"], onyomi:["ソツ"], kunyomi:[], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"卒業", reading:"そつぎょう", meaning:"graduation"),
            KanjiExample(word:"卒論", reading:"そつろん", meaning:"graduation thesis")]),
        Kanji(id:"整", meanings:["arrange", "regulate"], onyomi:["セイ"], kunyomi:["ととの"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"整理", reading:"せいり", meaning:"organization"),
            KanjiExample(word:"整える", reading:"ととのえる", meaning:"to arrange")]),
        Kanji(id:"浴", meanings:["bathe", "bask"], onyomi:["ヨク"], kunyomi:["あ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"入浴", reading:"にゅうよく", meaning:"bathing"),
            KanjiExample(word:"シャワーを浴びる", reading:"しゃわーをあびる", meaning:"to take a shower")]),
        Kanji(id:"劇", meanings:["drama", "play"], onyomi:["ゲキ"], kunyomi:[], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"演劇", reading:"えんげき", meaning:"theater/drama"),
            KanjiExample(word:"劇場", reading:"げきじょう", meaning:"theater")]),
        Kanji(id:"落", meanings:["fall", "drop"], onyomi:["ラク"], kunyomi:["お", "おち"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"落ちる", reading:"おちる", meaning:"to fall"),
            KanjiExample(word:"落ち着く", reading:"おちつく", meaning:"to calm down")]),
        Kanji(id:"皆", meanings:["everyone", "all"], onyomi:["カイ"], kunyomi:["みな", "みんな"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"皆さん", reading:"みなさん", meaning:"everyone"),
            KanjiExample(word:"皆", reading:"みんな", meaning:"everyone")]),
        Kanji(id:"隣", meanings:["neighboring", "next to"], onyomi:["リン"], kunyomi:["となり"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"隣", reading:"となり", meaning:"next door"),
            KanjiExample(word:"隣接", reading:"りんせつ", meaning:"adjacent")]),
        Kanji(id:"商", meanings:["commerce", "trade"], onyomi:["ショウ"], kunyomi:["あきな"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"商売", reading:"しょうばい", meaning:"business"),
            KanjiExample(word:"商品", reading:"しょうひん", meaning:"product")]),
        Kanji(id:"暮", meanings:["sunset", "live"], onyomi:["ボ"], kunyomi:["く", "くれ"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"暮らす", reading:"くらす", meaning:"to live"),
            KanjiExample(word:"夕暮れ", reading:"ゆうぐれ", meaning:"evening twilight")]),
        Kanji(id:"丈", meanings:["height", "length", "stout"], onyomi:["ジョウ"], kunyomi:["たけ"], level:.N3, strokeCount:3, examples:[
            KanjiExample(word:"丈夫", reading:"じょうぶ", meaning:"sturdy"),
            KanjiExample(word:"背丈", reading:"せたけ", meaning:"height")]),
        Kanji(id:"丁", meanings:["block", "even number"], onyomi:["チョウ", "テイ"], kunyomi:[], level:.N3, strokeCount:2, examples:[
            KanjiExample(word:"丁寧", reading:"ていねい", meaning:"polite"),
            KanjiExample(word:"丁目", reading:"ちょうめ", meaning:"block number")]),
        Kanji(id:"机", meanings:["desk"], onyomi:["キ"], kunyomi:["つくえ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"机", reading:"つくえ", meaning:"desk"),
            KanjiExample(word:"机上", reading:"きじょう", meaning:"on the desk/theoretical")]),
        Kanji(id:"袋", meanings:["bag", "sack"], onyomi:["タイ"], kunyomi:["ふくろ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"袋", reading:"ふくろ", meaning:"bag"),
            KanjiExample(word:"手袋", reading:"てぶくろ", meaning:"gloves")]),
        Kanji(id:"箱", meanings:["box"], onyomi:["ソウ"], kunyomi:["はこ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"箱", reading:"はこ", meaning:"box"),
            KanjiExample(word:"郵便箱", reading:"ゆうびんばこ", meaning:"mailbox")]),
        Kanji(id:"窓", meanings:["window"], onyomi:["ソウ"], kunyomi:["まど"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"窓", reading:"まど", meaning:"window"),
            KanjiExample(word:"窓口", reading:"まどぐち", meaning:"counter/window")]),
        Kanji(id:"鼻", meanings:["nose"], onyomi:["ビ"], kunyomi:["はな"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"鼻", reading:"はな", meaning:"nose"),
            KanjiExample(word:"鼻血", reading:"はなぢ", meaning:"nosebleed")]),
        Kanji(id:"歯", meanings:["tooth"], onyomi:["シ"], kunyomi:["は"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"歯", reading:"は", meaning:"tooth"),
            KanjiExample(word:"歯医者", reading:"はいしゃ", meaning:"dentist")]),
        Kanji(id:"肩", meanings:["shoulder"], onyomi:["ケン"], kunyomi:["かた"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"肩", reading:"かた", meaning:"shoulder"),
            KanjiExample(word:"肩書", reading:"かたがき", meaning:"title/affiliation")]),
        Kanji(id:"腹", meanings:["belly", "stomach"], onyomi:["フク"], kunyomi:["はら"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"お腹", reading:"おなか", meaning:"stomach"),
            KanjiExample(word:"腹立つ", reading:"はらたつ", meaning:"to get angry")]),
        Kanji(id:"頭", meanings:["head", "top"], onyomi:["トウ", "ズ", "ト"], kunyomi:["あたま", "かしら"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"頭", reading:"あたま", meaning:"head"),
            KanjiExample(word:"頭痛", reading:"ずつう", meaning:"headache")]),
        Kanji(id:"顔", meanings:["face"], onyomi:["ガン"], kunyomi:["かお"], level:.N3, strokeCount:18, examples:[
            KanjiExample(word:"顔", reading:"かお", meaning:"face"),
            KanjiExample(word:"顔色", reading:"かおいろ", meaning:"complexion")]),
        Kanji(id:"背", meanings:["back", "height"], onyomi:["ハイ"], kunyomi:["せ", "せい", "そむ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"背中", reading:"せなか", meaning:"back"),
            KanjiExample(word:"背景", reading:"はいけい", meaning:"background")]),
        Kanji(id:"胸", meanings:["chest", "heart"], onyomi:["キョウ"], kunyomi:["むね", "むな"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"胸", reading:"むね", meaning:"chest/heart"),
            KanjiExample(word:"胸焼け", reading:"むねやけ", meaning:"heartburn")]),
        Kanji(id:"膝", meanings:["knee"], onyomi:["シツ"], kunyomi:["ひざ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"膝", reading:"ひざ", meaning:"knee"),
            KanjiExample(word:"膝枕", reading:"ひざまくら", meaning:"lap pillow")]),
        Kanji(id:"腕", meanings:["arm"], onyomi:["ワン"], kunyomi:["うで"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"腕", reading:"うで", meaning:"arm"),
            KanjiExample(word:"腕前", reading:"うでまえ", meaning:"skill/ability")]),
        Kanji(id:"湯", meanings:["hot water", "bath"], onyomi:["トウ"], kunyomi:["ゆ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"お湯", reading:"おゆ", meaning:"hot water"),
            KanjiExample(word:"温泉", reading:"おんせん", meaning:"hot spring")]),
        Kanji(id:"氷", meanings:["ice"], onyomi:["ヒョウ"], kunyomi:["こおり", "ひ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"氷", reading:"こおり", meaning:"ice"),
            KanjiExample(word:"氷山", reading:"ひょうざん", meaning:"iceberg")]),
        Kanji(id:"植", meanings:["plant"], onyomi:["ショク"], kunyomi:["う"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"植える", reading:"うえる", meaning:"to plant"),
            KanjiExample(word:"植物", reading:"しょくぶつ", meaning:"plant")]),
        Kanji(id:"葉", meanings:["leaf", "word"], onyomi:["ヨウ"], kunyomi:["は"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"葉", reading:"は", meaning:"leaf"),
            KanjiExample(word:"言葉", reading:"ことば", meaning:"word/language")]),
        Kanji(id:"皮", meanings:["skin", "bark", "peel"], onyomi:["ヒ"], kunyomi:["かわ"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"皮", reading:"かわ", meaning:"skin/leather"),
            KanjiExample(word:"皮肉", reading:"ひにく", meaning:"sarcasm/irony")]),
        Kanji(id:"毛", meanings:["hair", "fur"], onyomi:["モウ"], kunyomi:["け"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"髪の毛", reading:"かみのけ", meaning:"hair"),
            KanjiExample(word:"羊毛", reading:"ようもう", meaning:"wool")]),
        Kanji(id:"羽", meanings:["feather", "wing"], onyomi:["ウ"], kunyomi:["は", "はね"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"羽", reading:"はね", meaning:"feather/wing"),
            KanjiExample(word:"羽毛", reading:"うもう", meaning:"down feathers")]),
        Kanji(id:"卵", meanings:["egg"], onyomi:["ラン"], kunyomi:["たまご"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"卵", reading:"たまご", meaning:"egg"),
            KanjiExample(word:"鶏卵", reading:"けいらん", meaning:"chicken egg")]),
        Kanji(id:"鳥", meanings:["bird"], onyomi:["チョウ"], kunyomi:["とり"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"鳥", reading:"とり", meaning:"bird"),
            KanjiExample(word:"渡り鳥", reading:"わたりどり", meaning:"migratory bird")]),
        Kanji(id:"牛", meanings:["cow", "beef"], onyomi:["ギュウ", "ゴ"], kunyomi:["うし"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"牛", reading:"うし", meaning:"cow"),
            KanjiExample(word:"牛乳", reading:"ぎゅうにゅう", meaning:"milk")]),
        Kanji(id:"馬", meanings:["horse"], onyomi:["バ", "マ"], kunyomi:["うま", "ま"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"馬", reading:"うま", meaning:"horse"),
            KanjiExample(word:"馬力", reading:"ばりき", meaning:"horsepower")]),
        Kanji(id:"猫", meanings:["cat"], onyomi:["ビョウ"], kunyomi:["ねこ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"猫", reading:"ねこ", meaning:"cat"),
            KanjiExample(word:"猫の手", reading:"ねこのて", meaning:"anyone's help")]),
        Kanji(id:"豚", meanings:["pig"], onyomi:["トン"], kunyomi:["ぶた"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"豚", reading:"ぶた", meaning:"pig"),
            KanjiExample(word:"豚肉", reading:"ぶたにく", meaning:"pork")]),
        Kanji(id:"鶏", meanings:["chicken"], onyomi:["ケイ"], kunyomi:["にわとり"], level:.N3, strokeCount:19, examples:[
            KanjiExample(word:"鶏肉", reading:"とりにく", meaning:"chicken meat"),
            KanjiExample(word:"鶏卵", reading:"けいらん", meaning:"chicken egg")]),
        Kanji(id:"虫", meanings:["insect", "bug"], onyomi:["チュウ"], kunyomi:["むし"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"虫", reading:"むし", meaning:"insect"),
            KanjiExample(word:"害虫", reading:"がいちゅう", meaning:"pest")]),
        Kanji(id:"丸", meanings:["round", "circle"], onyomi:["ガン"], kunyomi:["まる"], level:.N3, strokeCount:3, examples:[
            KanjiExample(word:"丸い", reading:"まるい", meaning:"round"),
            KanjiExample(word:"丸", reading:"まる", meaning:"circle")]),
        Kanji(id:"面", meanings:["face", "surface"], onyomi:["メン", "ベン"], kunyomi:["おも", "おもて"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"面白い", reading:"おもしろい", meaning:"interesting"),
            KanjiExample(word:"場面", reading:"ばめん", meaning:"scene")]),
        Kanji(id:"暑", meanings:["hot (weather)"], onyomi:["ショ"], kunyomi:["あつ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"暑い", reading:"あつい", meaning:"hot (weather)"),
            KanjiExample(word:"猛暑", reading:"もうしょ", meaning:"intense heat")]),
        Kanji(id:"寒", meanings:["cold (weather)"], onyomi:["カン"], kunyomi:["さむ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"寒い", reading:"さむい", meaning:"cold"),
            KanjiExample(word:"寒暖", reading:"かんだん", meaning:"temperature difference")]),
        Kanji(id:"涼", meanings:["cool", "refreshing"], onyomi:["リョウ"], kunyomi:["すず"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"涼しい", reading:"すずしい", meaning:"cool"),
            KanjiExample(word:"涼む", reading:"すずむ", meaning:"to cool off")]),
        Kanji(id:"暖", meanings:["warm"], onyomi:["ダン"], kunyomi:["あたた"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"暖かい", reading:"あたたかい", meaning:"warm"),
            KanjiExample(word:"温暖", reading:"おんだん", meaning:"mild/temperate")]),
        Kanji(id:"狭", meanings:["narrow", "small"], onyomi:["キョウ"], kunyomi:["せま"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"狭い", reading:"せまい", meaning:"narrow"),
            KanjiExample(word:"狭める", reading:"せばめる", meaning:"to narrow")]),
        Kanji(id:"忙", meanings:["busy"], onyomi:["ボウ"], kunyomi:["いそが"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"忙しい", reading:"いそがしい", meaning:"busy"),
            KanjiExample(word:"多忙", reading:"たぼう", meaning:"very busy")]),
        Kanji(id:"暇", meanings:["free time", "leisure"], onyomi:["カ"], kunyomi:["ひま"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"暇", reading:"ひま", meaning:"free time"),
            KanjiExample(word:"休暇", reading:"きゅうか", meaning:"vacation/leave")]),
        Kanji(id:"珍", meanings:["rare", "unusual"], onyomi:["チン"], kunyomi:["めずら"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"珍しい", reading:"めずらしい", meaning:"rare"),
            KanjiExample(word:"珍品", reading:"ちんぴん", meaning:"rare item")]),
        Kanji(id:"酒", meanings:["alcohol", "sake"], onyomi:["シュ"], kunyomi:["さけ", "さか"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"お酒", reading:"おさけ", meaning:"alcohol"),
            KanjiExample(word:"酒屋", reading:"さかや", meaning:"liquor store")]),
        Kanji(id:"豆", meanings:["bean", "soybean"], onyomi:["トウ", "ズ"], kunyomi:["まめ"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"豆腐", reading:"とうふ", meaning:"tofu"),
            KanjiExample(word:"大豆", reading:"だいず", meaning:"soybean")]),
        Kanji(id:"甘", meanings:["sweet"], onyomi:["カン"], kunyomi:["あま"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"甘い", reading:"あまい", meaning:"sweet"),
            KanjiExample(word:"甘える", reading:"あまえる", meaning:"to depend on")]),
        Kanji(id:"酸", meanings:["sour", "acid"], onyomi:["サン"], kunyomi:["す"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"酸っぱい", reading:"すっぱい", meaning:"sour"),
            KanjiExample(word:"酸素", reading:"さんそ", meaning:"oxygen")]),
        Kanji(id:"塩", meanings:["salt"], onyomi:["エン"], kunyomi:["しお"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"塩", reading:"しお", meaning:"salt"),
            KanjiExample(word:"食塩", reading:"しょくえん", meaning:"table salt")]),
        Kanji(id:"油", meanings:["oil"], onyomi:["ユ"], kunyomi:["あぶら"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"油", reading:"あぶら", meaning:"oil"),
            KanjiExample(word:"石油", reading:"せきゆ", meaning:"petroleum")]),
        Kanji(id:"砂", meanings:["sand", "sugar"], onyomi:["サ", "シャ"], kunyomi:["すな"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"砂", reading:"すな", meaning:"sand"),
            KanjiExample(word:"砂糖", reading:"さとう", meaning:"sugar")]),
        Kanji(id:"糖", meanings:["sugar", "glucose"], onyomi:["トウ"], kunyomi:[], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"砂糖", reading:"さとう", meaning:"sugar"),
            KanjiExample(word:"血糖", reading:"けっとう", meaning:"blood sugar")]),
        Kanji(id:"皿", meanings:["dish", "plate"], onyomi:["ベイ"], kunyomi:["さら"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"皿", reading:"さら", meaning:"plate/dish"),
            KanjiExample(word:"灰皿", reading:"はいざら", meaning:"ashtray")]),
        Kanji(id:"杯", meanings:["cup", "counter for drinks"], onyomi:["ハイ"], kunyomi:["さかずき"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"一杯", reading:"いっぱい", meaning:"one cup/full"),
            KanjiExample(word:"乾杯", reading:"かんぱい", meaning:"cheers")]),
        Kanji(id:"鍋", meanings:["pot", "pan"], onyomi:["カ"], kunyomi:["なべ"], level:.N3, strokeCount:17, examples:[
            KanjiExample(word:"鍋", reading:"なべ", meaning:"pot"),
            KanjiExample(word:"鍋料理", reading:"なべりょうり", meaning:"hot pot dish")]),
        Kanji(id:"刀", meanings:["sword", "knife"], onyomi:["トウ"], kunyomi:["かたな"], level:.N3, strokeCount:2, examples:[
            KanjiExample(word:"日本刀", reading:"にほんとう", meaning:"Japanese sword"),
            KanjiExample(word:"小刀", reading:"こがたな", meaning:"small knife")]),
        Kanji(id:"布", meanings:["cloth", "spread"], onyomi:["フ"], kunyomi:["ぬの"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"布", reading:"ぬの", meaning:"cloth"),
            KanjiExample(word:"毛布", reading:"もうふ", meaning:"blanket")]),
        Kanji(id:"針", meanings:["needle", "hand of clock"], onyomi:["シン"], kunyomi:["はり"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"針", reading:"はり", meaning:"needle"),
            KanjiExample(word:"時計の針", reading:"とけいのはり", meaning:"clock hand")]),
        Kanji(id:"糸", meanings:["thread", "string"], onyomi:["シ"], kunyomi:["いと"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"糸", reading:"いと", meaning:"thread"),
            KanjiExample(word:"絹糸", reading:"きぬいと", meaning:"silk thread")]),
        Kanji(id:"綿", meanings:["cotton"], onyomi:["メン"], kunyomi:["わた"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"綿", reading:"わた", meaning:"cotton"),
            KanjiExample(word:"綿密", reading:"めんみつ", meaning:"thorough")]),
        Kanji(id:"板", meanings:["board", "plank"], onyomi:["ハン", "バン"], kunyomi:["いた"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"黒板", reading:"こくばん", meaning:"blackboard"),
            KanjiExample(word:"板", reading:"いた", meaning:"board")]),
        Kanji(id:"棒", meanings:["stick", "rod"], onyomi:["ボウ"], kunyomi:["ぼう"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"棒", reading:"ぼう", meaning:"stick/rod"),
            KanjiExample(word:"棒読み", reading:"ぼうよみ", meaning:"monotone reading")]),
        Kanji(id:"輪", meanings:["wheel", "ring", "circle"], onyomi:["リン"], kunyomi:["わ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"輪", reading:"わ", meaning:"ring/circle"),
            KanjiExample(word:"車輪", reading:"しゃりん", meaning:"wheel")]),
        Kanji(id:"管", meanings:["pipe", "control"], onyomi:["カン"], kunyomi:["くだ"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"管理", reading:"かんり", meaning:"management"),
            KanjiExample(word:"血管", reading:"けっかん", meaning:"blood vessel")]),
        Kanji(id:"箸", meanings:["chopsticks"], onyomi:["チョ"], kunyomi:["はし"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"箸", reading:"はし", meaning:"chopsticks"),
            KanjiExample(word:"箸置き", reading:"はしおき", meaning:"chopstick rest")]),
        Kanji(id:"鏡", meanings:["mirror"], onyomi:["キョウ"], kunyomi:["かがみ"], level:.N3, strokeCount:19, examples:[
            KanjiExample(word:"鏡", reading:"かがみ", meaning:"mirror"),
            KanjiExample(word:"眼鏡", reading:"めがね", meaning:"glasses")]),
        Kanji(id:"錠", meanings:["lock", "tablet"], onyomi:["ジョウ"], kunyomi:[], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"錠前", reading:"じょうまえ", meaning:"lock"),
            KanjiExample(word:"施錠", reading:"せじょう", meaning:"locking")]),
        Kanji(id:"歩", meanings:["walk", "step"], onyomi:["ホ", "ブ", "フ"], kunyomi:["ある", "あゆ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"歩く", reading:"あるく", meaning:"to walk"),
            KanjiExample(word:"散歩", reading:"さんぽ", meaning:"walk")]),
        Kanji(id:"登", meanings:["climb", "register"], onyomi:["トウ", "ト"], kunyomi:["のぼ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"登る", reading:"のぼる", meaning:"to climb"),
            KanjiExample(word:"登山", reading:"とざん", meaning:"mountain climbing")]),
        Kanji(id:"拭", meanings:["wipe"], onyomi:["ショク"], kunyomi:["ふ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"拭く", reading:"ふく", meaning:"to wipe"),
            KanjiExample(word:"拭き取る", reading:"ふきとる", meaning:"to wipe off")]),
        Kanji(id:"磨", meanings:["polish", "brush"], onyomi:["マ"], kunyomi:["みが"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"磨く", reading:"みがく", meaning:"to polish"),
            KanjiExample(word:"歯磨き", reading:"はみがき", meaning:"teeth brushing")]),
        Kanji(id:"捨", meanings:["throw away"], onyomi:["シャ"], kunyomi:["す"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"捨てる", reading:"すてる", meaning:"to throw away"),
            KanjiExample(word:"四捨五入", reading:"ししゃごにゅう", meaning:"rounding")]),
        Kanji(id:"拾", meanings:["pick up", "ten"], onyomi:["シュウ", "ジュウ"], kunyomi:["ひろ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"拾う", reading:"ひろう", meaning:"to pick up"),
            KanjiExample(word:"拾得", reading:"しゅうとく", meaning:"finding")]),
        Kanji(id:"投", meanings:["throw", "invest"], onyomi:["トウ"], kunyomi:["な"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"投げる", reading:"なげる", meaning:"to throw"),
            KanjiExample(word:"投票", reading:"とうひょう", meaning:"voting")]),
        Kanji(id:"打", meanings:["hit", "strike"], onyomi:["ダ"], kunyomi:["う"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"打つ", reading:"うつ", meaning:"to hit"),
            KanjiExample(word:"打ち合わせ", reading:"うちあわせ", meaning:"meeting")]),
        Kanji(id:"借", meanings:["borrow"], onyomi:["シャク"], kunyomi:["か"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"借りる", reading:"かりる", meaning:"to borrow"),
            KanjiExample(word:"借金", reading:"しゃっきん", meaning:"debt")]),
        Kanji(id:"貸", meanings:["lend"], onyomi:["タイ"], kunyomi:["か"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"貸す", reading:"かす", meaning:"to lend"),
            KanjiExample(word:"貸し出し", reading:"かしだし", meaning:"lending")]),
        Kanji(id:"与", meanings:["give", "grant"], onyomi:["ヨ"], kunyomi:["あた"], level:.N3, strokeCount:3, examples:[
            KanjiExample(word:"与える", reading:"あたえる", meaning:"to give"),
            KanjiExample(word:"給与", reading:"きゅうよ", meaning:"salary")]),
        Kanji(id:"貰", meanings:["receive", "get"], onyomi:["モラ"], kunyomi:["もら"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"もらう", reading:"もらう", meaning:"to receive"),
            KanjiExample(word:"貰い物", reading:"もらいもの", meaning:"gift received")]),
        Kanji(id:"預", meanings:["deposit", "entrust"], onyomi:["ヨ"], kunyomi:["あず"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"預ける", reading:"あずける", meaning:"to deposit"),
            KanjiExample(word:"預金", reading:"よきん", meaning:"bank deposit")]),
        Kanji(id:"説", meanings:["explain", "theory"], onyomi:["セツ", "ゼイ"], kunyomi:["と"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"説明", reading:"せつめい", meaning:"explanation"),
            KanjiExample(word:"小説", reading:"しょうせつ", meaning:"novel")]),
        Kanji(id:"骨", meanings:["bone"], onyomi:["コツ"], kunyomi:["ほね"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"骨", reading:"ほね", meaning:"bone"),
            KanjiExample(word:"骨折", reading:"こっせつ", meaning:"bone fracture")]),
        Kanji(id:"息", meanings:["breath", "son"], onyomi:["ソク"], kunyomi:["いき"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"息", reading:"いき", meaning:"breath"),
            KanjiExample(word:"息子", reading:"むすこ", meaning:"son")]),
        Kanji(id:"汗", meanings:["sweat"], onyomi:["カン"], kunyomi:["あせ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"汗", reading:"あせ", meaning:"sweat"),
            KanjiExample(word:"発汗", reading:"はっかん", meaning:"perspiration")]),
        Kanji(id:"涙", meanings:["tear", "cry"], onyomi:["ルイ"], kunyomi:["なみだ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"涙", reading:"なみだ", meaning:"tear"),
            KanjiExample(word:"感涙", reading:"かんるい", meaning:"tears of emotion")]),
        Kanji(id:"恐", meanings:["fear", "terrifying"], onyomi:["キョウ"], kunyomi:["おそ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"恐ろしい", reading:"おそろしい", meaning:"terrible"),
            KanjiExample(word:"恐怖", reading:"きょうふ", meaning:"fear")]),
        Kanji(id:"疲", meanings:["tired", "exhausted"], onyomi:["ヒ"], kunyomi:["つか"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"疲れる", reading:"つかれる", meaning:"to get tired"),
            KanjiExample(word:"疲労", reading:"ひろう", meaning:"fatigue")]),
        Kanji(id:"熱", meanings:["heat", "fever"], onyomi:["ネツ"], kunyomi:["あつ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"熱い", reading:"あつい", meaning:"hot"),
            KanjiExample(word:"熱心", reading:"ねっしん", meaning:"enthusiastic")]),
        Kanji(id:"冷", meanings:["cold", "cool"], onyomi:["レイ"], kunyomi:["つめ", "さ", "ひ"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"冷たい", reading:"つめたい", meaning:"cold"),
            KanjiExample(word:"冷蔵庫", reading:"れいぞうこ", meaning:"refrigerator")]),
        Kanji(id:"看", meanings:["watch over", "nurse"], onyomi:["カン"], kunyomi:[], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"看護師", reading:"かんごし", meaning:"nurse"),
            KanjiExample(word:"看板", reading:"かんばん", meaning:"sign/billboard")]),
        Kanji(id:"護", meanings:["protect", "defend"], onyomi:["ゴ"], kunyomi:[], level:.N3, strokeCount:20, examples:[
            KanjiExample(word:"看護", reading:"かんご", meaning:"nursing"),
            KanjiExample(word:"弁護", reading:"べんご", meaning:"defense/advocacy")]),
        Kanji(id:"呼", meanings:["call", "breathe"], onyomi:["コ"], kunyomi:["よ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"呼ぶ", reading:"よぶ", meaning:"to call"),
            KanjiExample(word:"呼吸", reading:"こきゅう", meaning:"breathing")]),
        Kanji(id:"叫", meanings:["shout", "scream"], onyomi:["キョウ"], kunyomi:["さけ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"叫ぶ", reading:"さけぶ", meaning:"to shout"),
            KanjiExample(word:"絶叫", reading:"ぜっきょう", meaning:"scream")]),
        Kanji(id:"匂", meanings:["smell", "fragrance"], onyomi:["ニオ"], kunyomi:["にお"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"匂い", reading:"におい", meaning:"smell"),
            KanjiExample(word:"匂う", reading:"におう", meaning:"to smell")]),
        Kanji(id:"眠", meanings:["sleep", "drowsy"], onyomi:["ミン"], kunyomi:["ねむ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"眠る", reading:"ねむる", meaning:"to sleep"),
            KanjiExample(word:"不眠", reading:"ふみん", meaning:"insomnia")]),
        Kanji(id:"祝", meanings:["celebrate"], onyomi:["シュク", "シュウ"], kunyomi:["いわ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"祝う", reading:"いわう", meaning:"to celebrate"),
            KanjiExample(word:"お祝い", reading:"おいわい", meaning:"celebration")]),
        Kanji(id:"許", meanings:["permit", "forgive"], onyomi:["キョ"], kunyomi:["ゆる"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"許す", reading:"ゆるす", meaning:"to permit/forgive"),
            KanjiExample(word:"許可", reading:"きょか", meaning:"permission")]),
        Kanji(id:"断", meanings:["cut off", "refuse"], onyomi:["ダン"], kunyomi:["ことわ", "た"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"断る", reading:"ことわる", meaning:"to refuse"),
            KanjiExample(word:"判断", reading:"はんだん", meaning:"judgment")]),
        Kanji(id:"勧", meanings:["recommend", "urge"], onyomi:["カン"], kunyomi:["すす"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"勧める", reading:"すすめる", meaning:"to recommend"),
            KanjiExample(word:"勧誘", reading:"かんゆう", meaning:"solicitation")]),
        Kanji(id:"救", meanings:["rescue", "save"], onyomi:["キュウ"], kunyomi:["すく"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"救う", reading:"すくう", meaning:"to save"),
            KanjiExample(word:"救助", reading:"きゅうじょ", meaning:"rescue")]),
        Kanji(id:"助", meanings:["help", "assist"], onyomi:["ジョ"], kunyomi:["たす", "すけ"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"助ける", reading:"たすける", meaning:"to help"),
            KanjiExample(word:"助言", reading:"じょげん", meaning:"advice")]),
        Kanji(id:"頼", meanings:["rely", "request"], onyomi:["ライ"], kunyomi:["たの", "たよ"], level:.N3, strokeCount:16, examples:[
            KanjiExample(word:"頼む", reading:"たのむ", meaning:"to request"),
            KanjiExample(word:"信頼", reading:"しんらい", meaning:"trust")]),
        Kanji(id:"信", meanings:["trust", "believe"], onyomi:["シン"], kunyomi:["しん"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"信じる", reading:"しんじる", meaning:"to believe"),
            KanjiExample(word:"信頼", reading:"しんらい", meaning:"trust")]),
        Kanji(id:"頑", meanings:["stubborn", "firm"], onyomi:["ガン"], kunyomi:[], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"頑張る", reading:"がんばる", meaning:"to do one's best"),
            KanjiExample(word:"頑固", reading:"がんこ", meaning:"stubborn")]),
        Kanji(id:"張", meanings:["stretch", "assert"], onyomi:["チョウ"], kunyomi:["は"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"張る", reading:"はる", meaning:"to stretch"),
            KanjiExample(word:"主張", reading:"しゅちょう", meaning:"assertion")]),
        Kanji(id:"励", meanings:["encourage", "work hard"], onyomi:["レイ"], kunyomi:["はげ"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"励む", reading:"はげむ", meaning:"to work hard"),
            KanjiExample(word:"励ます", reading:"はげます", meaning:"to encourage")]),
        Kanji(id:"競", meanings:["compete", "race"], onyomi:["キョウ", "ケイ"], kunyomi:["きそ", "せ"], level:.N3, strokeCount:20, examples:[
            KanjiExample(word:"競争", reading:"きょうそう", meaning:"competition"),
            KanjiExample(word:"競技", reading:"きょうぎ", meaning:"sport/game")]),
        Kanji(id:"戦", meanings:["war", "fight"], onyomi:["セン"], kunyomi:["いくさ", "たたか"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"戦争", reading:"せんそう", meaning:"war"),
            KanjiExample(word:"戦う", reading:"たたかう", meaning:"to fight")]),
        Kanji(id:"単", meanings:["single", "simple"], onyomi:["タン"], kunyomi:[], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"単純", reading:"たんじゅん", meaning:"simple"),
            KanjiExample(word:"単語", reading:"たんご", meaning:"word/vocabulary")]),
        Kanji(id:"乾", meanings:["dry"], onyomi:["カン"], kunyomi:["かわ", "ほ"], level:.N3, strokeCount:11, examples:[
            KanjiExample(word:"乾く", reading:"かわく", meaning:"to dry"),
            KanjiExample(word:"乾燥", reading:"かんそう", meaning:"dryness")]),
        Kanji(id:"湿", meanings:["moist", "humid"], onyomi:["シツ"], kunyomi:["しめ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"湿る", reading:"しめる", meaning:"to be moist"),
            KanjiExample(word:"湿度", reading:"しつど", meaning:"humidity")]),
        Kanji(id:"焼", meanings:["burn", "bake"], onyomi:["ショウ"], kunyomi:["や"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"焼く", reading:"やく", meaning:"to bake"),
            KanjiExample(word:"焼き魚", reading:"やきざかな", meaning:"grilled fish")]),
        Kanji(id:"煮", meanings:["boil", "cook"], onyomi:["シャ"], kunyomi:["に"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"煮る", reading:"にる", meaning:"to boil"),
            KanjiExample(word:"煮物", reading:"にもの", meaning:"simmered dish")]),
        Kanji(id:"炒", meanings:["stir-fry"], onyomi:["ソウ"], kunyomi:["いた"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"炒める", reading:"いためる", meaning:"to stir-fry"),
            KanjiExample(word:"炒め物", reading:"いためもの", meaning:"stir-fried dish")]),
        Kanji(id:"揚", meanings:["fry", "raise"], onyomi:["ヨウ"], kunyomi:["あ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"揚げる", reading:"あげる", meaning:"to fry"),
            KanjiExample(word:"唐揚げ", reading:"からあげ", meaning:"fried chicken")]),
        Kanji(id:"溶", meanings:["melt", "dissolve"], onyomi:["ヨウ"], kunyomi:["と", "とか", "とける"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"溶ける", reading:"とける", meaning:"to melt"),
            KanjiExample(word:"溶液", reading:"ようえき", meaning:"solution")]),
        Kanji(id:"固", meanings:["hard", "solid"], onyomi:["コ"], kunyomi:["かた"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"固い", reading:"かたい", meaning:"hard/solid"),
            KanjiExample(word:"固める", reading:"かためる", meaning:"to harden")]),
        Kanji(id:"粉", meanings:["powder", "flour"], onyomi:["フン"], kunyomi:["こな", "こ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"粉", reading:"こな", meaning:"powder"),
            KanjiExample(word:"小麦粉", reading:"こむぎこ", meaning:"flour")]),
        Kanji(id:"材", meanings:["material", "timber"], onyomi:["ザイ"], kunyomi:[], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"材料", reading:"ざいりょう", meaning:"material/ingredient"),
            KanjiExample(word:"木材", reading:"もくざい", meaning:"lumber")]),
        Kanji(id:"料", meanings:["fee", "material"], onyomi:["リョウ"], kunyomi:[], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"料理", reading:"りょうり", meaning:"cooking"),
            KanjiExample(word:"料金", reading:"りょうきん", meaning:"fee/charge")]),
        Kanji(id:"漁", meanings:["fishing"], onyomi:["ギョ", "リョウ"], kunyomi:["すなど"], level:.N3, strokeCount:14, examples:[
            KanjiExample(word:"漁業", reading:"ぎょぎょう", meaning:"fishing industry"),
            KanjiExample(word:"漁師", reading:"りょうし", meaning:"fisherman")]),
        Kanji(id:"牧", meanings:["pasture", "raise"], onyomi:["ボク"], kunyomi:["まき"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"牧場", reading:"まきば", meaning:"farm/pasture"),
            KanjiExample(word:"牧師", reading:"ぼくし", meaning:"pastor")]),
        Kanji(id:"耕", meanings:["cultivate", "till"], onyomi:["コウ"], kunyomi:["たがや"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"耕す", reading:"たがやす", meaning:"to till"),
            KanjiExample(word:"農耕", reading:"のうこう", meaning:"farming")]),
        Kanji(id:"約", meanings:["promise", "approximately"], onyomi:["ヤク"], kunyomi:[], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"約束", reading:"やくそく", meaning:"promise"),
            KanjiExample(word:"約", reading:"やく", meaning:"approximately")]),
        Kanji(id:"束", meanings:["bundle", "promise"], onyomi:["ソク"], kunyomi:["たば"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"約束", reading:"やくそく", meaning:"promise"),
            KanjiExample(word:"束", reading:"たば", meaning:"bundle")]),
        Kanji(id:"歓", meanings:["joy", "welcome"], onyomi:["カン"], kunyomi:[], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"歓迎", reading:"かんげい", meaning:"welcome"),
            KanjiExample(word:"歓声", reading:"かんせい", meaning:"cheer")]),
        Kanji(id:"桜", meanings:["cherry blossom", "cherry tree"], onyomi:["オウ"], kunyomi:["さくら"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"桜", reading:"さくら", meaning:"cherry blossom"),
            KanjiExample(word:"桜並木", reading:"さくらなみき", meaning:"row of cherry trees")]),
        Kanji(id:"梅", meanings:["plum"], onyomi:["バイ"], kunyomi:["うめ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"梅", reading:"うめ", meaning:"plum"),
            KanjiExample(word:"梅雨", reading:"つゆ", meaning:"rainy season")]),
        Kanji(id:"松", meanings:["pine tree"], onyomi:["ショウ"], kunyomi:["まつ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"松", reading:"まつ", meaning:"pine tree"),
            KanjiExample(word:"松茸", reading:"まつたけ", meaning:"matsutake mushroom")]),
        Kanji(id:"竹", meanings:["bamboo"], onyomi:["チク"], kunyomi:["たけ"], level:.N3, strokeCount:6, examples:[
            KanjiExample(word:"竹", reading:"たけ", meaning:"bamboo"),
            KanjiExample(word:"竹刀", reading:"しない", meaning:"bamboo sword")]),
        Kanji(id:"塔", meanings:["tower", "pagoda"], onyomi:["トウ"], kunyomi:[], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"塔", reading:"とう", meaning:"tower"),
            KanjiExample(word:"鉄塔", reading:"てっとう", meaning:"steel tower")]),
        Kanji(id:"童", meanings:["child", "juvenile"], onyomi:["ドウ"], kunyomi:["わら"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"童話", reading:"どうわ", meaning:"fairy tale"),
            KanjiExample(word:"童心", reading:"どうしん", meaning:"childlike heart")]),
        Kanji(id:"雷", meanings:["thunder", "lightning"], onyomi:["ライ"], kunyomi:["かみなり"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"雷", reading:"かみなり", meaning:"thunder"),
            KanjiExample(word:"雷雨", reading:"らいう", meaning:"thunderstorm")]),
        Kanji(id:"霧", meanings:["fog", "mist"], onyomi:["ム"], kunyomi:["きり"], level:.N3, strokeCount:19, examples:[
            KanjiExample(word:"霧", reading:"きり", meaning:"fog"),
            KanjiExample(word:"霧雨", reading:"きりさめ", meaning:"drizzle")]),
        Kanji(id:"虹", meanings:["rainbow"], onyomi:["コウ"], kunyomi:["にじ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"虹", reading:"にじ", meaning:"rainbow"),
            KanjiExample(word:"虹色", reading:"にじいろ", meaning:"rainbow-colored")]),
        Kanji(id:"滝", meanings:["waterfall"], onyomi:["ロウ"], kunyomi:["たき"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"滝", reading:"たき", meaning:"waterfall"),
            KanjiExample(word:"滝登り", reading:"たきのぼり", meaning:"climbing a waterfall")]),
        Kanji(id:"泥", meanings:["mud", "mire"], onyomi:["デイ"], kunyomi:["どろ"], level:.N3, strokeCount:8, examples:[
            KanjiExample(word:"泥", reading:"どろ", meaning:"mud"),
            KanjiExample(word:"泥棒", reading:"どろぼう", meaning:"thief/robber")]),
        Kanji(id:"溝", meanings:["ditch", "groove", "gutter"], onyomi:["コウ"], kunyomi:["みぞ"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"溝", reading:"みぞ", meaning:"ditch/gap"),
            KanjiExample(word:"排水溝", reading:"はいすいこう", meaning:"drainage ditch")]),
        Kanji(id:"凍", meanings:["freeze", "ice"], onyomi:["トウ"], kunyomi:["こお", "こご"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"凍る", reading:"こおる", meaning:"to freeze"),
            KanjiExample(word:"冷凍", reading:"れいとう", meaning:"freezing/refrigeration")]),
        Kanji(id:"焦", meanings:["char", "impatient", "scorch"], onyomi:["ショウ"], kunyomi:["こ", "あせ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"焦る", reading:"あせる", meaning:"to be impatient"),
            KanjiExample(word:"焦点", reading:"しょうてん", meaning:"focus/focal point")]),
        Kanji(id:"湖", meanings:["lake"], onyomi:["コ"], kunyomi:["みずうみ"], level:.N3, strokeCount:12, examples:[
            KanjiExample(word:"湖", reading:"みずうみ", meaning:"lake"),
            KanjiExample(word:"湖畔", reading:"こはん", meaning:"lakeside")]),
        Kanji(id:"浜", meanings:["beach", "seashore"], onyomi:["ヒン"], kunyomi:["はま"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"浜", reading:"はま", meaning:"beach"),
            KanjiExample(word:"砂浜", reading:"すなはま", meaning:"sandy beach")]),
        Kanji(id:"縄", meanings:["rope", "cord"], onyomi:["ジョウ"], kunyomi:["なわ"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"縄", reading:"なわ", meaning:"rope"),
            KanjiExample(word:"縄跳び", reading:"なわとび", meaning:"jump rope")]),
        Kanji(id:"炭", meanings:["charcoal", "coal"], onyomi:["タン"], kunyomi:["すみ"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"炭", reading:"すみ", meaning:"charcoal"),
            KanjiExample(word:"石炭", reading:"せきたん", meaning:"coal")]),
        Kanji(id:"霜", meanings:["frost", "ice crystals"], onyomi:["ソウ"], kunyomi:["しも"], level:.N3, strokeCount:17, examples:[
            KanjiExample(word:"霜", reading:"しも", meaning:"frost"),
            KanjiExample(word:"霜焼け", reading:"しもやけ", meaning:"frostbite")]),
        Kanji(id:"潮", meanings:["tide", "salt water"], onyomi:["チョウ"], kunyomi:["しお"], level:.N3, strokeCount:15, examples:[
            KanjiExample(word:"潮", reading:"しお", meaning:"tide/salt water"),
            KanjiExample(word:"満潮", reading:"まんちょう", meaning:"high tide")]),
        Kanji(id:"洞", meanings:["cave", "hollow"], onyomi:["ドウ"], kunyomi:["ほら"], level:.N3, strokeCount:9, examples:[
            KanjiExample(word:"洞窟", reading:"どうくつ", meaning:"cave"),
            KanjiExample(word:"洞察", reading:"どうさつ", meaning:"insight/perception")]),
        Kanji(id:"礼", meanings:["bow", "courtesy", "thanks"], onyomi:["レイ", "ライ"], kunyomi:["れい"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"礼儀", reading:"れいぎ", meaning:"manners"),
            KanjiExample(word:"お礼", reading:"おれい", meaning:"thanks/gratitude")]),
        Kanji(id:"氏", meanings:["clan", "family name", "Mr."], onyomi:["シ"], kunyomi:["うじ"], level:.N3, strokeCount:4, examples:[
            KanjiExample(word:"氏名", reading:"しめい", meaning:"full name"),
            KanjiExample(word:"田氏", reading:"たし", meaning:"the Tanaka family")]),
        Kanji(id:"警", meanings:["warn", "alert", "police"], onyomi:["ケイ"], kunyomi:[], level:.N3, strokeCount:19, examples:[
            KanjiExample(word:"警察", reading:"けいさつ", meaning:"police"),
            KanjiExample(word:"警告", reading:"けいこく", meaning:"warning")]),
        Kanji(id:"犯", meanings:["crime", "offense", "violate"], onyomi:["ハン", "ボン"], kunyomi:["おか"], level:.N3, strokeCount:5, examples:[
            KanjiExample(word:"犯罪", reading:"はんざい", meaning:"crime"),
            KanjiExample(word:"犯人", reading:"はんにん", meaning:"criminal")]),
        Kanji(id:"恋", meanings:["love", "romance", "longing"], onyomi:["レン"], kunyomi:["こい", "こ"], level:.N3, strokeCount:10, examples:[
            KanjiExample(word:"恋愛", reading:"れんあい", meaning:"romance/love"),
            KanjiExample(word:"恋人", reading:"こいびと", meaning:"lover/sweetheart")]),
        Kanji(id:"嫌", meanings:["dislike", "hate", "disagreeable"], onyomi:["ケン", "ゲン"], kunyomi:["きら", "いや"], level:.N3, strokeCount:13, examples:[
            KanjiExample(word:"嫌い", reading:"きらい", meaning:"dislike"),
            KanjiExample(word:"嫌がる", reading:"いやがる", meaning:"to be reluctant")]),
        Kanji(id:"局", meanings:["bureau", "office", "situation", "end"], onyomi:["キョク"], kunyomi:["つぼね"], level:.N3, strokeCount:7, examples:[
            KanjiExample(word:"局", reading:"きょく", meaning:"bureau/situation"),
            KanjiExample(word:"郵便局", reading:"ゆうびんきょく", meaning:"post office")]),
    ]

    // ─────────────────────────────────────────
    // MARK: N2 (382 kanji)
    // ─────────────────────────────────────────
    static let n2: [Kanji] = [
        Kanji(id:"構", meanings:["build","posture","care"], onyomi:["コウ"], kunyomi:["かま"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"構造", reading:"こうぞう", meaning:"structure"),
            KanjiExample(word:"構える", reading:"かまえる", meaning:"to set up / to brace")]),
        Kanji(id:"述", meanings:["mention","state"], onyomi:["ジュツ"], kunyomi:["の"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"述べる", reading:"のべる", meaning:"to state"),
            KanjiExample(word:"記述", reading:"きじゅつ", meaning:"description")]),
        Kanji(id:"制", meanings:["system","control","suppress"], onyomi:["セイ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"制度", reading:"せいど", meaning:"system / institution"),
            KanjiExample(word:"制限", reading:"せいげん", meaning:"restriction")]),
        Kanji(id:"資", meanings:["resources","capital","funds"], onyomi:["シ"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"資料", reading:"しりょう", meaning:"materials / data"),
            KanjiExample(word:"資本", reading:"しほん", meaning:"capital")]),
        Kanji(id:"性", meanings:["nature","sex","gender"], onyomi:["セイ","ショウ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"性格", reading:"せいかく", meaning:"personality"),
            KanjiExample(word:"可能性", reading:"かのうせい", meaning:"possibility")]),
        Kanji(id:"連", meanings:["connect","take along","continuous"], onyomi:["レン"], kunyomi:["つら","つ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"連絡", reading:"れんらく", meaning:"contact / communication"),
            KanjiExample(word:"関連", reading:"かんれん", meaning:"relation / connection")]),
        Kanji(id:"提", meanings:["propose","carry in hand"], onyomi:["テイ"], kunyomi:["さ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"提案", reading:"ていあん", meaning:"proposal"),
            KanjiExample(word:"提供", reading:"ていきょう", meaning:"provision / offer")]),
        Kanji(id:"評", meanings:["evaluate","comment"], onyomi:["ヒョウ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"評価", reading:"ひょうか", meaning:"evaluation"),
            KanjiExample(word:"批評", reading:"ひひょう", meaning:"criticism / review")]),
        Kanji(id:"設", meanings:["establish","set up"], onyomi:["セツ"], kunyomi:["もう"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"設備", reading:"せつび", meaning:"equipment"),
            KanjiExample(word:"設定", reading:"せってい", meaning:"setting / configuration")]),
        Kanji(id:"能", meanings:["ability","talent"], onyomi:["ノウ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"可能", reading:"かのう", meaning:"possible"),
            KanjiExample(word:"能力", reading:"のうりょく", meaning:"ability")]),
        Kanji(id:"効", meanings:["effect","valid"], onyomi:["コウ"], kunyomi:["き"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"効果", reading:"こうか", meaning:"effect"),
            KanjiExample(word:"有効", reading:"ゆうこう", meaning:"valid")]),
        Kanji(id:"策", meanings:["plan","policy"], onyomi:["サク"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"政策", reading:"せいさく", meaning:"policy"),
            KanjiExample(word:"対策", reading:"たいさく", meaning:"countermeasure")]),
        Kanji(id:"政", meanings:["politics","government"], onyomi:["セイ","ショウ"], kunyomi:["まつりごと"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"政治", reading:"せいじ", meaning:"politics"),
            KanjiExample(word:"政府", reading:"せいふ", meaning:"government")]),
        Kanji(id:"治", meanings:["govern","cure"], onyomi:["ジ","チ"], kunyomi:["おさ","なお"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"政治", reading:"せいじ", meaning:"politics"),
            KanjiExample(word:"治療", reading:"ちりょう", meaning:"medical treatment")]),
        Kanji(id:"経", meanings:["pass through","manage"], onyomi:["ケイ","キョウ"], kunyomi:["へ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"経済", reading:"けいざい", meaning:"economy"),
            KanjiExample(word:"経験", reading:"けいけん", meaning:"experience")]),
        Kanji(id:"済", meanings:["finish","help"], onyomi:["サイ"], kunyomi:["す"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"経済", reading:"けいざい", meaning:"economy"),
            KanjiExample(word:"済む", reading:"すむ", meaning:"to finish")]),
        Kanji(id:"業", meanings:["work","industry"], onyomi:["ギョウ","ゴウ"], kunyomi:["わざ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"産業", reading:"さんぎょう", meaning:"industry"),
            KanjiExample(word:"授業", reading:"じゅぎょう", meaning:"class / lesson")]),
        Kanji(id:"務", meanings:["duty","serve"], onyomi:["ム"], kunyomi:["つと"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"業務", reading:"ぎょうむ", meaning:"business"),
            KanjiExample(word:"義務", reading:"ぎむ", meaning:"obligation")]),
        Kanji(id:"職", meanings:["job","occupation"], onyomi:["ショク"], kunyomi:[], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"職業", reading:"しょくぎょう", meaning:"occupation"),
            KanjiExample(word:"就職", reading:"しゅうしょく", meaning:"getting a job")]),
        Kanji(id:"雇", meanings:["employ","hire"], onyomi:["コ"], kunyomi:["やと"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"雇用", reading:"こよう", meaning:"employment"),
            KanjiExample(word:"雇う", reading:"やとう", meaning:"to hire")]),
        Kanji(id:"給", meanings:["salary","supply"], onyomi:["キュウ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"給料", reading:"きゅうりょう", meaning:"salary"),
            KanjiExample(word:"供給", reading:"きょうきゅう", meaning:"supply")]),
        Kanji(id:"収", meanings:["income","collect"], onyomi:["シュウ"], kunyomi:["おさ"], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"収入", reading:"しゅうにゅう", meaning:"income"),
            KanjiExample(word:"収集", reading:"しゅうしゅう", meaning:"collection")]),
        Kanji(id:"支", meanings:["support","branch"], onyomi:["シ"], kunyomi:["ささ"], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"支える", reading:"ささえる", meaning:"to support"),
            KanjiExample(word:"支出", reading:"ししゅつ", meaning:"expenditure")]),
        Kanji(id:"払", meanings:["pay"], onyomi:["フツ"], kunyomi:["はら"], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"支払う", reading:"しはらう", meaning:"to pay"),
            KanjiExample(word:"払う", reading:"はらう", meaning:"to pay / to sweep")]),
        Kanji(id:"税", meanings:["tax"], onyomi:["ゼイ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"消費税", reading:"しょうひぜい", meaning:"consumption tax"),
            KanjiExample(word:"税金", reading:"ぜいきん", meaning:"tax")]),
        Kanji(id:"費", meanings:["expense","spend"], onyomi:["ヒ"], kunyomi:["つい"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"費用", reading:"ひよう", meaning:"cost"),
            KanjiExample(word:"消費", reading:"しょうひ", meaning:"consumption")]),
        Kanji(id:"価", meanings:["price","value"], onyomi:["カ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"価格", reading:"かかく", meaning:"price"),
            KanjiExample(word:"価値", reading:"かち", meaning:"value")]),
        Kanji(id:"格", meanings:["rank","standard"], onyomi:["カク","コウ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"価格", reading:"かかく", meaning:"price"),
            KanjiExample(word:"資格", reading:"しかく", meaning:"qualification")]),
        Kanji(id:"益", meanings:["profit","benefit"], onyomi:["エキ","ヤク"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"利益", reading:"りえき", meaning:"profit"),
            KanjiExample(word:"有益", reading:"ゆうえき", meaning:"beneficial")]),
        Kanji(id:"損", meanings:["loss","damage"], onyomi:["ソン"], kunyomi:["そこ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"損害", reading:"そんがい", meaning:"damage"),
            KanjiExample(word:"損なう", reading:"そこなう", meaning:"to harm")]),
        Kanji(id:"貿", meanings:["trade"], onyomi:["ボウ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"貿易", reading:"ぼうえき", meaning:"trade / commerce"),
            KanjiExample(word:"貿易赤字", reading:"ぼうえきあかじ", meaning:"trade deficit")]),
        Kanji(id:"易", meanings:["easy","trade"], onyomi:["エキ","イ"], kunyomi:["やさ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"貿易", reading:"ぼうえき", meaning:"trade"),
            KanjiExample(word:"容易", reading:"ようい", meaning:"easy")]),
        Kanji(id:"輸", meanings:["transport"], onyomi:["ユ"], kunyomi:[], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"輸出", reading:"ゆしゅつ", meaning:"export"),
            KanjiExample(word:"輸入", reading:"ゆにゅう", meaning:"import")]),
        Kanji(id:"販", meanings:["sell"], onyomi:["ハン"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"販売", reading:"はんばい", meaning:"sales"),
            KanjiExample(word:"自動販売機", reading:"じどうはんばいき", meaning:"vending machine")]),
        Kanji(id:"購", meanings:["purchase"], onyomi:["コウ"], kunyomi:[], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"購入", reading:"こうにゅう", meaning:"purchase"),
            KanjiExample(word:"購読", reading:"こうどく", meaning:"subscription")]),
        Kanji(id:"技", meanings:["skill","art"], onyomi:["ギ"], kunyomi:["わざ"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"技術", reading:"ぎじゅつ", meaning:"technology"),
            KanjiExample(word:"技能", reading:"ぎのう", meaning:"skill")]),
        Kanji(id:"術", meanings:["art","technique"], onyomi:["ジュツ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"技術", reading:"ぎじゅつ", meaning:"technology"),
            KanjiExample(word:"芸術", reading:"げいじゅつ", meaning:"art")]),
        Kanji(id:"科", meanings:["subject","department"], onyomi:["カ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"科学", reading:"かがく", meaning:"science"),
            KanjiExample(word:"教科書", reading:"きょうかしょ", meaning:"textbook")]),
        Kanji(id:"研", meanings:["research","sharpen"], onyomi:["ケン"], kunyomi:["と"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"研究", reading:"けんきゅう", meaning:"research"),
            KanjiExample(word:"研修", reading:"けんしゅう", meaning:"training")]),
        Kanji(id:"究", meanings:["investigate"], onyomi:["キュウ"], kunyomi:["きわ"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"研究", reading:"けんきゅう", meaning:"research"),
            KanjiExample(word:"究明", reading:"きゅうめい", meaning:"investigation")]),
        Kanji(id:"査", meanings:["investigate","examine"], onyomi:["サ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"調査", reading:"ちょうさ", meaning:"investigation"),
            KanjiExample(word:"検査", reading:"けんさ", meaning:"inspection")]),
        Kanji(id:"検", meanings:["examine","check"], onyomi:["ケン"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"検査", reading:"けんさ", meaning:"inspection"),
            KanjiExample(word:"検討", reading:"けんとう", meaning:"consideration")]),
        Kanji(id:"討", meanings:["attack","consider"], onyomi:["トウ"], kunyomi:["う"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"検討", reading:"けんとう", meaning:"consideration"),
            KanjiExample(word:"討論", reading:"とうろん", meaning:"debate")]),
        Kanji(id:"証", meanings:["proof","certificate"], onyomi:["ショウ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"証明", reading:"しょうめい", meaning:"proof"),
            KanjiExample(word:"証拠", reading:"しょうこ", meaning:"evidence")]),
        Kanji(id:"告", meanings:["tell","announce"], onyomi:["コク"], kunyomi:["つ"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"報告", reading:"ほうこく", meaning:"report"),
            KanjiExample(word:"広告", reading:"こうこく", meaning:"advertisement")]),
        Kanji(id:"示", meanings:["show","indicate"], onyomi:["ジ","シ"], kunyomi:["しめ"], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"示す", reading:"しめす", meaning:"to show"),
            KanjiExample(word:"指示", reading:"しじ", meaning:"instruction")]),
        Kanji(id:"指", meanings:["finger","point"], onyomi:["シ"], kunyomi:["ゆび","さ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"指示", reading:"しじ", meaning:"instruction"),
            KanjiExample(word:"指定", reading:"してい", meaning:"designation")]),
        Kanji(id:"導", meanings:["lead","guide"], onyomi:["ドウ"], kunyomi:["みちび"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"指導", reading:"しどう", meaning:"guidance"),
            KanjiExample(word:"導く", reading:"みちびく", meaning:"to guide")]),
        Kanji(id:"解", meanings:["understand","solve"], onyomi:["カイ","ゲ"], kunyomi:["と"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"解決", reading:"かいけつ", meaning:"resolution"),
            KanjiExample(word:"理解", reading:"りかい", meaning:"understanding")]),
        Kanji(id:"釈", meanings:["explain","release"], onyomi:["シャク"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"解釈", reading:"かいしゃく", meaning:"interpretation"),
            KanjiExample(word:"釈明", reading:"しゃくめい", meaning:"explanation")]),
        Kanji(id:"訳", meanings:["translate","reason"], onyomi:["ヤク"], kunyomi:["わけ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"翻訳", reading:"ほんやく", meaning:"translation"),
            KanjiExample(word:"言い訳", reading:"いいわけ", meaning:"excuse")]),
        Kanji(id:"翻", meanings:["translate","flip"], onyomi:["ホン","ハン"], kunyomi:["ひるがえ"], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"翻訳", reading:"ほんやく", meaning:"translation"),
            KanjiExample(word:"翻す", reading:"ひるがえす", meaning:"to reverse")]),
        Kanji(id:"言", meanings:["say","word"], onyomi:["ゲン","ゴン"], kunyomi:["い","こと"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"言葉", reading:"ことば", meaning:"word / language"),
            KanjiExample(word:"発言", reading:"はつげん", meaning:"statement")]),
        Kanji(id:"伝", meanings:["convey","tradition"], onyomi:["デン"], kunyomi:["つた"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"伝える", reading:"つたえる", meaning:"to convey"),
            KanjiExample(word:"伝統", reading:"でんとう", meaning:"tradition")]),
        Kanji(id:"統", meanings:["unite","govern"], onyomi:["トウ"], kunyomi:["す"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"伝統", reading:"でんとう", meaning:"tradition"),
            KanjiExample(word:"統計", reading:"とうけい", meaning:"statistics")]),
        Kanji(id:"算", meanings:["calculate"], onyomi:["サン"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"計算", reading:"けいさん", meaning:"calculation"),
            KanjiExample(word:"予算", reading:"よさん", meaning:"budget")]),
        Kanji(id:"量", meanings:["quantity"], onyomi:["リョウ"], kunyomi:["はか"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"量", reading:"りょう", meaning:"quantity"),
            KanjiExample(word:"大量", reading:"たいりょう", meaning:"large quantity")]),
        Kanji(id:"質", meanings:["quality","nature"], onyomi:["シツ","シチ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"品質", reading:"ひんしつ", meaning:"quality"),
            KanjiExample(word:"質問", reading:"しつもん", meaning:"question")]),
        Kanji(id:"程", meanings:["degree","extent"], onyomi:["テイ"], kunyomi:["ほど"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"程度", reading:"ていど", meaning:"degree / extent"),
            KanjiExample(word:"工程", reading:"こうてい", meaning:"process")]),
        Kanji(id:"限", meanings:["limit"], onyomi:["ゲン"], kunyomi:["かぎ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"制限", reading:"せいげん", meaning:"restriction"),
            KanjiExample(word:"限る", reading:"かぎる", meaning:"to limit")]),
        Kanji(id:"界", meanings:["world","boundary"], onyomi:["カイ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"世界", reading:"せかい", meaning:"world"),
            KanjiExample(word:"限界", reading:"げんかい", meaning:"limit")]),
        Kanji(id:"域", meanings:["region","area"], onyomi:["イキ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"地域", reading:"ちいき", meaning:"region"),
            KanjiExample(word:"領域", reading:"りょういき", meaning:"territory")]),
        Kanji(id:"区", meanings:["ward","district"], onyomi:["ク"], kunyomi:[], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"地区", reading:"ちく", meaning:"district"),
            KanjiExample(word:"区別", reading:"くべつ", meaning:"distinction")]),
        Kanji(id:"割", meanings:["divide","proportion"], onyomi:["カツ"], kunyomi:["わ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"割る", reading:"わる", meaning:"to divide"),
            KanjiExample(word:"割合", reading:"わりあい", meaning:"proportion")]),
        Kanji(id:"較", meanings:["compare"], onyomi:["カク"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"比較", reading:"ひかく", meaning:"comparison"),
            KanjiExample(word:"較べる", reading:"くらべる", meaning:"to compare")]),
        Kanji(id:"違", meanings:["differ","wrong"], onyomi:["イ"], kunyomi:["ちが"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"違う", reading:"ちがう", meaning:"to differ"),
            KanjiExample(word:"違法", reading:"いほう", meaning:"illegal")]),
        Kanji(id:"異", meanings:["different","unusual"], onyomi:["イ"], kunyomi:["こと"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"異なる", reading:"ことなる", meaning:"to differ"),
            KanjiExample(word:"異常", reading:"いじょう", meaning:"abnormal")]),
        Kanji(id:"共", meanings:["together","both"], onyomi:["キョウ"], kunyomi:["とも"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"共に", reading:"ともに", meaning:"together"),
            KanjiExample(word:"共同", reading:"きょうどう", meaning:"joint / cooperative")]),
        Kanji(id:"互", meanings:["mutual"], onyomi:["ゴ"], kunyomi:["たがい"], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"互いに", reading:"たがいに", meaning:"mutually"),
            KanjiExample(word:"相互", reading:"そうご", meaning:"mutual")]),
        Kanji(id:"相", meanings:["mutual","minister"], onyomi:["ソウ","ショウ"], kunyomi:["あい"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"相互", reading:"そうご", meaning:"mutual"),
            KanjiExample(word:"相談", reading:"そうだん", meaning:"consultation")]),
        Kanji(id:"談", meanings:["talk","discuss"], onyomi:["ダン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"相談", reading:"そうだん", meaning:"consultation"),
            KanjiExample(word:"談話", reading:"だんわ", meaning:"conversation")]),
        Kanji(id:"渉", meanings:["negotiate","wade"], onyomi:["ショウ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"交渉", reading:"こうしょう", meaning:"negotiation"),
            KanjiExample(word:"干渉", reading:"かんしょう", meaning:"interference")]),
        Kanji(id:"渡", meanings:["cross","hand over"], onyomi:["ト"], kunyomi:["わた"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"渡る", reading:"わたる", meaning:"to cross"),
            KanjiExample(word:"渡す", reading:"わたす", meaning:"to hand over")]),
        Kanji(id:"移", meanings:["move","transfer"], onyomi:["イ"], kunyomi:["うつ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"移動", reading:"いどう", meaning:"movement"),
            KanjiExample(word:"移る", reading:"うつる", meaning:"to move / transfer")]),
        Kanji(id:"革", meanings:["reform","leather"], onyomi:["カク"], kunyomi:["かわ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"改革", reading:"かいかく", meaning:"reform"),
            KanjiExample(word:"革命", reading:"かくめい", meaning:"revolution")]),
        Kanji(id:"改", meanings:["reform","renew"], onyomi:["カイ"], kunyomi:["あらた"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"改革", reading:"かいかく", meaning:"reform"),
            KanjiExample(word:"改善", reading:"かいぜん", meaning:"improvement")]),
        Kanji(id:"善", meanings:["good","virtue"], onyomi:["ゼン"], kunyomi:["よ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"改善", reading:"かいぜん", meaning:"improvement"),
            KanjiExample(word:"善意", reading:"ぜんい", meaning:"good faith")]),
        Kanji(id:"誤", meanings:["mistake"], onyomi:["ゴ"], kunyomi:["あやま"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"誤解", reading:"ごかい", meaning:"misunderstanding"),
            KanjiExample(word:"誤る", reading:"あやまる", meaning:"to err")]),
        Kanji(id:"失", meanings:["lose","miss"], onyomi:["シツ"], kunyomi:["うしな"], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"失敗", reading:"しっぱい", meaning:"failure"),
            KanjiExample(word:"失う", reading:"うしなう", meaning:"to lose")]),
        Kanji(id:"敗", meanings:["fail","lose"], onyomi:["ハイ"], kunyomi:["やぶ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"失敗", reading:"しっぱい", meaning:"failure"),
            KanjiExample(word:"敗北", reading:"はいぼく", meaning:"defeat")]),
        Kanji(id:"成", meanings:["become","succeed"], onyomi:["セイ","ジョウ"], kunyomi:["な"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"成功", reading:"せいこう", meaning:"success"),
            KanjiExample(word:"成長", reading:"せいちょう", meaning:"growth")]),
        Kanji(id:"功", meanings:["achievement"], onyomi:["コウ","ク"], kunyomi:[], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"成功", reading:"せいこう", meaning:"success"),
            KanjiExample(word:"功績", reading:"こうせき", meaning:"achievement")]),
        Kanji(id:"展", meanings:["exhibit","spread"], onyomi:["テン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"発展", reading:"はってん", meaning:"development"),
            KanjiExample(word:"展示", reading:"てんじ", meaning:"exhibition")]),
        Kanji(id:"発", meanings:["emit","depart"], onyomi:["ハツ","ホツ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"発展", reading:"はってん", meaning:"development"),
            KanjiExample(word:"出発", reading:"しゅっぱつ", meaning:"departure")]),
        Kanji(id:"昇", meanings:["rise","ascend"], onyomi:["ショウ"], kunyomi:["のぼ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"上昇", reading:"じょうしょう", meaning:"rise / ascent"),
            KanjiExample(word:"昇進", reading:"しょうしん", meaning:"promotion")]),
        Kanji(id:"影", meanings:["shadow", "influence"], onyomi:["エイ"], kunyomi:["かげ"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"影響", reading:"えいきょう", meaning:"influence"),
            KanjiExample(word:"影", reading:"かげ", meaning:"shadow")]),
        Kanji(id:"延", meanings:["extend", "postpone"], onyomi:["エン"], kunyomi:["の"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"延長", reading:"えんちょう", meaning:"extension"),
            KanjiExample(word:"延期", reading:"えんき", meaning:"postponement")]),
        Kanji(id:"演", meanings:["perform", "play"], onyomi:["エン"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"演説", reading:"えんぜつ", meaning:"speech"),
            KanjiExample(word:"演じる", reading:"えんじる", meaning:"to perform")]),
        Kanji(id:"応", meanings:["respond", "apply"], onyomi:["オウ"], kunyomi:["こた"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"応援", reading:"おうえん", meaning:"support/cheering"),
            KanjiExample(word:"対応", reading:"たいおう", meaning:"response")]),
        Kanji(id:"往", meanings:["go", "come", "past"], onyomi:["オウ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"往復", reading:"おうふく", meaning:"round trip"),
            KanjiExample(word:"往来", reading:"おうらい", meaning:"coming and going")]),
        Kanji(id:"介", meanings:["mediate", "shell"], onyomi:["カイ"], kunyomi:[], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"紹介", reading:"しょうかい", meaning:"introduction"),
            KanjiExample(word:"介護", reading:"かいご", meaning:"nursing care")]),
        Kanji(id:"拡", meanings:["expand", "enlarge"], onyomi:["カク"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"拡大", reading:"かくだい", meaning:"expansion"),
            KanjiExample(word:"拡張", reading:"かくちょう", meaning:"expansion/extension")]),
        Kanji(id:"干", meanings:["dry", "interfere"], onyomi:["カン"], kunyomi:["ほ"], level:.N2, strokeCount:3, examples:[
            KanjiExample(word:"干渉", reading:"かんしょう", meaning:"interference"),
            KanjiExample(word:"干す", reading:"ほす", meaning:"to dry")]),
        Kanji(id:"幹", meanings:["trunk", "main"], onyomi:["カン"], kunyomi:["みき"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"幹部", reading:"かんぶ", meaning:"leadership/executive"),
            KanjiExample(word:"幹線", reading:"かんせん", meaning:"main line")]),
        Kanji(id:"慣", meanings:["accustomed", "habit"], onyomi:["カン"], kunyomi:["な", "な"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"習慣", reading:"しゅうかん", meaning:"habit"),
            KanjiExample(word:"慣れる", reading:"なれる", meaning:"to get used to")]),
        Kanji(id:"基", meanings:["base", "foundation"], onyomi:["キ"], kunyomi:["もと"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"基本", reading:"きほん", meaning:"basis/fundamental"),
            KanjiExample(word:"基準", reading:"きじゅん", meaning:"standard")]),
        Kanji(id:"規", meanings:["rule", "standard"], onyomi:["キ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"規則", reading:"きそく", meaning:"rule"),
            KanjiExample(word:"規模", reading:"きぼ", meaning:"scale/scope")]),
        Kanji(id:"寄", meanings:["approach", "contribute"], onyomi:["キ"], kunyomi:["よ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"寄付", reading:"きふ", meaning:"donation"),
            KanjiExample(word:"寄る", reading:"よる", meaning:"to approach")]),
        Kanji(id:"既", meanings:["already", "previously"], onyomi:["キ"], kunyomi:["すで"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"既に", reading:"すでに", meaning:"already"),
            KanjiExample(word:"既存", reading:"きそん", meaning:"existing")]),
        Kanji(id:"均", meanings:["equal", "level"], onyomi:["キン"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"均等", reading:"きんとう", meaning:"equality"),
            KanjiExample(word:"平均", reading:"へいきん", meaning:"average")]),
        Kanji(id:"禁", meanings:["prohibit", "forbidden"], onyomi:["キン"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"禁止", reading:"きんし", meaning:"prohibition"),
            KanjiExample(word:"禁煙", reading:"きんえん", meaning:"no smoking")]),
        Kanji(id:"句", meanings:["phrase", "haiku"], onyomi:["ク"], kunyomi:[], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"文句", reading:"もんく", meaning:"complaint/phrase"),
            KanjiExample(word:"俳句", reading:"はいく", meaning:"haiku")]),
        Kanji(id:"訓", meanings:["teach", "instruction"], onyomi:["クン", "キン"], kunyomi:["よ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"訓練", reading:"くんれん", meaning:"training"),
            KanjiExample(word:"教訓", reading:"きょうくん", meaning:"lesson/moral")]),
        Kanji(id:"群", meanings:["group", "crowd"], onyomi:["グン"], kunyomi:["む"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"群衆", reading:"ぐんしゅう", meaning:"crowd"),
            KanjiExample(word:"群れ", reading:"むれ", meaning:"group/flock")]),
        Kanji(id:"傾", meanings:["lean", "tend"], onyomi:["ケイ"], kunyomi:["かたむ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"傾向", reading:"けいこう", meaning:"tendency"),
            KanjiExample(word:"傾く", reading:"かたむく", meaning:"to lean")]),
        Kanji(id:"厳", meanings:["strict", "solemn"], onyomi:["ゲン", "ゴン"], kunyomi:["きび", "おごそ"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"厳しい", reading:"きびしい", meaning:"strict"),
            KanjiExample(word:"厳格", reading:"げんかく", meaning:"strict/rigorous")]),
        Kanji(id:"講", meanings:["lecture", "course"], onyomi:["コウ"], kunyomi:[], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"講義", reading:"こうぎ", meaning:"lecture"),
            KanjiExample(word:"講座", reading:"こうざ", meaning:"course")]),
        Kanji(id:"採", meanings:["pick", "adopt"], onyomi:["サイ"], kunyomi:["と"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"採用", reading:"さいよう", meaning:"adoption/hiring"),
            KanjiExample(word:"採取", reading:"さいしゅ", meaning:"collection/sampling")]),
        Kanji(id:"削", meanings:["shave", "reduce"], onyomi:["サク"], kunyomi:["けず"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"削減", reading:"さくげん", meaning:"reduction"),
            KanjiExample(word:"削る", reading:"けずる", meaning:"to shave/reduce")]),
        Kanji(id:"察", meanings:["guess", "observe"], onyomi:["サツ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"観察", reading:"かんさつ", meaning:"observation"),
            KanjiExample(word:"警察", reading:"けいさつ", meaning:"police")]),
        Kanji(id:"施", meanings:["carry out", "apply"], onyomi:["シ", "セ"], kunyomi:["ほどこ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"施設", reading:"しせつ", meaning:"facility"),
            KanjiExample(word:"実施", reading:"じっし", meaning:"implementation")]),
        Kanji(id:"詞", meanings:["word", "part of speech"], onyomi:["シ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"名詞", reading:"めいし", meaning:"noun"),
            KanjiExample(word:"動詞", reading:"どうし", meaning:"verb")]),
        Kanji(id:"辞", meanings:["resign", "word"], onyomi:["ジ"], kunyomi:["や"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"辞書", reading:"じしょ", meaning:"dictionary"),
            KanjiExample(word:"辞める", reading:"やめる", meaning:"to resign")]),
        Kanji(id:"謝", meanings:["apologize", "thank"], onyomi:["シャ"], kunyomi:["あやま"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"謝る", reading:"あやまる", meaning:"to apologize"),
            KanjiExample(word:"感謝", reading:"かんしゃ", meaning:"gratitude")]),
        Kanji(id:"宗", meanings:["religion", "sect"], onyomi:["シュウ", "ソウ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"宗教", reading:"しゅうきょう", meaning:"religion"),
            KanjiExample(word:"宗派", reading:"しゅうは", meaning:"sect/denomination")]),
        Kanji(id:"純", meanings:["pure", "genuine"], onyomi:["ジュン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"純粋", reading:"じゅんすい", meaning:"pure"),
            KanjiExample(word:"単純", reading:"たんじゅん", meaning:"simple")]),
        Kanji(id:"署", meanings:["office", "sign"], onyomi:["ショ"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"警察署", reading:"けいさつしょ", meaning:"police station"),
            KanjiExample(word:"署名", reading:"しょめい", meaning:"signature")]),
        Kanji(id:"将", meanings:["general", "future"], onyomi:["ショウ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"将来", reading:"しょうらい", meaning:"future"),
            KanjiExample(word:"将軍", reading:"しょうぐん", meaning:"general/shogun")]),
        Kanji(id:"状", meanings:["situation", "letter"], onyomi:["ジョウ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"状況", reading:"じょうきょう", meaning:"situation"),
            KanjiExample(word:"状態", reading:"じょうたい", meaning:"state/condition")]),
        Kanji(id:"触", meanings:["touch", "feel"], onyomi:["ショク"], kunyomi:["ふ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"接触", reading:"せっしょく", meaning:"contact"),
            KanjiExample(word:"触れる", reading:"ふれる", meaning:"to touch")]),
        Kanji(id:"尽", meanings:["exhaust", "use up"], onyomi:["ジン"], kunyomi:["つ"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"尽力", reading:"じんりょく", meaning:"effort"),
            KanjiExample(word:"尽きる", reading:"つきる", meaning:"to run out")]),
        Kanji(id:"陣", meanings:["camp", "battle formation"], onyomi:["ジン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"陣地", reading:"じんち", meaning:"position"),
            KanjiExample(word:"本陣", reading:"ほんじん", meaning:"headquarters")]),
        Kanji(id:"推", meanings:["push", "recommend"], onyomi:["スイ"], kunyomi:["お"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"推薦", reading:"すいせん", meaning:"recommendation"),
            KanjiExample(word:"推測", reading:"すいそく", meaning:"guess")]),
        Kanji(id:"積", meanings:["pile up", "accumulate"], onyomi:["セキ"], kunyomi:["つ"], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"積極的", reading:"せっきょくてき", meaning:"positive/proactive"),
            KanjiExample(word:"面積", reading:"めんせき", meaning:"area")]),
        Kanji(id:"接", meanings:["connect", "receive"], onyomi:["セツ"], kunyomi:["つ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"接続", reading:"せつぞく", meaning:"connection"),
            KanjiExample(word:"接触", reading:"せっしょく", meaning:"contact")]),
        Kanji(id:"宣", meanings:["proclaim", "announce"], onyomi:["セン"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"宣言", reading:"せんげん", meaning:"declaration"),
            KanjiExample(word:"宣伝", reading:"せんでん", meaning:"advertisement")]),
        Kanji(id:"専", meanings:["specialize", "exclusive"], onyomi:["セン"], kunyomi:["もっぱ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"専門", reading:"せんもん", meaning:"specialty"),
            KanjiExample(word:"専用", reading:"せんよう", meaning:"exclusive use")]),
        Kanji(id:"占", meanings:["occupy", "divine"], onyomi:["セン"], kunyomi:["し", "うらな"], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"占める", reading:"しめる", meaning:"to occupy"),
            KanjiExample(word:"占い", reading:"うらない", meaning:"fortune-telling")]),
        Kanji(id:"層", meanings:["layer", "stratum"], onyomi:["ソウ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"階層", reading:"かいそう", meaning:"hierarchy/layer"),
            KanjiExample(word:"上層", reading:"じょうそう", meaning:"upper class")]),
        Kanji(id:"装", meanings:["wear", "decorate"], onyomi:["ソウ", "ショウ"], kunyomi:["よそお"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"服装", reading:"ふくそう", meaning:"clothing"),
            KanjiExample(word:"装置", reading:"そうち", meaning:"device")]),
        Kanji(id:"存", meanings:["exist", "know"], onyomi:["ソン", "ゾン"], kunyomi:["なが"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"存在", reading:"そんざい", meaning:"existence"),
            KanjiExample(word:"存じる", reading:"ぞんじる", meaning:"to know (humble)")]),
        Kanji(id:"態", meanings:["attitude", "state"], onyomi:["タイ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"状態", reading:"じょうたい", meaning:"state/condition"),
            KanjiExample(word:"態度", reading:"たいど", meaning:"attitude")]),
        Kanji(id:"耐", meanings:["endure", "withstand"], onyomi:["タイ"], kunyomi:["た"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"耐える", reading:"たえる", meaning:"to endure"),
            KanjiExample(word:"耐性", reading:"たいせい", meaning:"resistance")]),
        Kanji(id:"宅", meanings:["home", "residence"], onyomi:["タク"], kunyomi:[], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"自宅", reading:"じたく", meaning:"one's home"),
            KanjiExample(word:"宅配", reading:"たくはい", meaning:"home delivery")]),
        Kanji(id:"段", meanings:["step", "level"], onyomi:["ダン"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"階段", reading:"かいだん", meaning:"stairs"),
            KanjiExample(word:"手段", reading:"しゅだん", meaning:"means/method")]),
        Kanji(id:"値", meanings:["price", "value"], onyomi:["チ"], kunyomi:["ね", "あたい"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"値段", reading:"ねだん", meaning:"price"),
            KanjiExample(word:"価値", reading:"かち", meaning:"value")]),
        Kanji(id:"著", meanings:["write", "remarkable"], onyomi:["チョ"], kunyomi:["あらわ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"著者", reading:"ちょしゃ", meaning:"author"),
            KanjiExample(word:"著作", reading:"ちょさく", meaning:"work/creation")]),
        Kanji(id:"貯", meanings:["save", "store"], onyomi:["チョ"], kunyomi:["た"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"貯金", reading:"ちょきん", meaning:"savings"),
            KanjiExample(word:"貯蓄", reading:"ちょちく", meaning:"savings")]),
        Kanji(id:"聴", meanings:["listen", "hear"], onyomi:["チョウ"], kunyomi:["き"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"聴く", reading:"きく", meaning:"to listen"),
            KanjiExample(word:"聴衆", reading:"ちょうしゅう", meaning:"audience")]),
        Kanji(id:"頂", meanings:["top", "receive"], onyomi:["チョウ"], kunyomi:["いただ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"頂上", reading:"ちょうじょう", meaning:"summit"),
            KanjiExample(word:"頂く", reading:"いただく", meaning:"to receive (humble)")]),
        Kanji(id:"典", meanings:["standard", "ceremony"], onyomi:["テン"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"辞典", reading:"じてん", meaning:"dictionary"),
            KanjiExample(word:"典型", reading:"てんけい", meaning:"typical")]),
        Kanji(id:"添", meanings:["add", "accompany"], onyomi:["テン"], kunyomi:["そ", "そえ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"添付", reading:"てんぷ", meaning:"attachment"),
            KanjiExample(word:"添える", reading:"そえる", meaning:"to add")]),
        Kanji(id:"得", meanings:["get", "gain"], onyomi:["トク"], kunyomi:["え", "う"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"得意", reading:"とくい", meaning:"strong point/proud"),
            KanjiExample(word:"取得", reading:"しゅとく", meaning:"acquisition")]),
        Kanji(id:"独", meanings:["alone", "unique"], onyomi:["ドク"], kunyomi:["ひと"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"独立", reading:"どくりつ", meaning:"independence"),
            KanjiExample(word:"独自", reading:"どくじ", meaning:"unique")]),
        Kanji(id:"突", meanings:["thrust", "sudden"], onyomi:["トツ"], kunyomi:["つ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"突然", reading:"とつぜん", meaning:"suddenly"),
            KanjiExample(word:"突破", reading:"とっぱ", meaning:"breakthrough")]),
        Kanji(id:"届", meanings:["reach", "deliver"], onyomi:["トドケ"], kunyomi:["とど"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"届ける", reading:"とどける", meaning:"to deliver"),
            KanjiExample(word:"届く", reading:"とどく", meaning:"to reach")]),
        Kanji(id:"難", meanings:["difficult", "disaster"], onyomi:["ナン"], kunyomi:["かた", "むずか"], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"困難", reading:"こんなん", meaning:"difficulty"),
            KanjiExample(word:"難しい", reading:"むずかしい", meaning:"difficult")]),
        Kanji(id:"排", meanings:["exclude", "expel"], onyomi:["ハイ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"排除", reading:"はいじょ", meaning:"exclusion"),
            KanjiExample(word:"排出", reading:"はいしゅつ", meaning:"emission")]),
        Kanji(id:"版", meanings:["print", "edition"], onyomi:["ハン"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"出版", reading:"しゅっぱん", meaning:"publishing"),
            KanjiExample(word:"版", reading:"ばん", meaning:"edition")]),
        Kanji(id:"判", meanings:["judge", "stamp"], onyomi:["ハン", "バン"], kunyomi:["さば"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"判断", reading:"はんだん", meaning:"judgment"),
            KanjiExample(word:"裁判", reading:"さいばん", meaning:"trial")]),
        Kanji(id:"批", meanings:["criticize"], onyomi:["ヒ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"批判", reading:"ひはん", meaning:"criticism"),
            KanjiExample(word:"批評", reading:"ひひょう", meaning:"critique")]),
        Kanji(id:"複", meanings:["double", "multiple"], onyomi:["フク"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"複雑", reading:"ふくざつ", meaning:"complex"),
            KanjiExample(word:"複数", reading:"ふくすう", meaning:"plural")]),
        Kanji(id:"補", meanings:["supplement", "help"], onyomi:["ホ"], kunyomi:["おぎな"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"補助", reading:"ほじょ", meaning:"assistance"),
            KanjiExample(word:"補充", reading:"ほじゅう", meaning:"replenishment")]),
        Kanji(id:"保", meanings:["protect", "maintain"], onyomi:["ホ"], kunyomi:["たも"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"保護", reading:"ほご", meaning:"protection"),
            KanjiExample(word:"確保", reading:"かくほ", meaning:"securing")]),
        Kanji(id:"防", meanings:["prevent", "defend"], onyomi:["ボウ"], kunyomi:["ふせ"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"防止", reading:"ぼうし", meaning:"prevention"),
            KanjiExample(word:"予防", reading:"よぼう", meaning:"prevention")]),
        Kanji(id:"密", meanings:["dense", "secret"], onyomi:["ミツ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"秘密", reading:"ひみつ", meaning:"secret"),
            KanjiExample(word:"密接", reading:"みっせつ", meaning:"close/intimate")]),
        Kanji(id:"脈", meanings:["pulse", "vein"], onyomi:["ミャク"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"脈絡", reading:"みゃくらく", meaning:"connection"),
            KanjiExample(word:"山脈", reading:"さんみゃく", meaning:"mountain range")]),
        Kanji(id:"利", meanings:["profit", "advantage"], onyomi:["リ"], kunyomi:["き"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"利益", reading:"りえき", meaning:"profit"),
            KanjiExample(word:"有利", reading:"ゆうり", meaning:"advantageous")]),
        Kanji(id:"流", meanings:["flow", "style"], onyomi:["リュウ", "ル"], kunyomi:["なが"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"流れる", reading:"ながれる", meaning:"to flow"),
            KanjiExample(word:"流行", reading:"りゅうこう", meaning:"trend/fashion")]),
        Kanji(id:"領", meanings:["territory", "receive"], onyomi:["リョウ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"領域", reading:"りょういき", meaning:"territory"),
            KanjiExample(word:"領土", reading:"りょうど", meaning:"territory")]),
        Kanji(id:"若", meanings:["young"], onyomi:["ジャク", "ニャク"], kunyomi:["わか", "も"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"若い", reading:"わかい", meaning:"young"),
            KanjiExample(word:"若者", reading:"わかもの", meaning:"young person")]),
        Kanji(id:"想", meanings:["think", "imagine"], onyomi:["ソウ", "ソ"], kunyomi:["おも"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"思想", reading:"しそう", meaning:"thought/ideology"),
            KanjiExample(word:"想像", reading:"そうぞう", meaning:"imagination")]),
        Kanji(id:"測", meanings:["measure", "survey"], onyomi:["ソク"], kunyomi:["はか"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"測定", reading:"そくてい", meaning:"measurement"),
            KanjiExample(word:"予測", reading:"よそく", meaning:"prediction")]),
        Kanji(id:"序", meanings:["order", "preface"], onyomi:["ジョ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"順序", reading:"じゅんじょ", meaning:"order/sequence"),
            KanjiExample(word:"序文", reading:"じょぶん", meaning:"preface")]),
        Kanji(id:"准", meanings:["semi-", "standard"], onyomi:["ジュン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"准教授", reading:"じゅんきょうじゅ", meaning:"associate professor"),
            KanjiExample(word:"基准", reading:"きじゅん", meaning:"standard")]),
        Kanji(id:"圧", meanings:["pressure", "push down"], onyomi:["アツ", "オウ"], kunyomi:[], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"気圧", reading:"きあつ", meaning:"atmospheric pressure"),
            KanjiExample(word:"圧力", reading:"あつりょく", meaning:"pressure")]),
        Kanji(id:"握", meanings:["grasp", "hold"], onyomi:["アク"], kunyomi:["にぎ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"握手", reading:"あくしゅ", meaning:"handshake"),
            KanjiExample(word:"握る", reading:"にぎる", meaning:"to grasp")]),
        Kanji(id:"依", meanings:["depend", "according to"], onyomi:["イ", "エ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"依頼", reading:"いらい", meaning:"request"),
            KanjiExample(word:"依存", reading:"いぞん", meaning:"dependence")]),
        Kanji(id:"遺", meanings:["leave behind", "bequeath"], onyomi:["イ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"遺産", reading:"いさん", meaning:"heritage"),
            KanjiExample(word:"遺言", reading:"ゆいごん", meaning:"will/testament")]),
        Kanji(id:"印", meanings:["stamp", "mark"], onyomi:["イン"], kunyomi:["しるし"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"印鑑", reading:"いんかん", meaning:"seal/stamp"),
            KanjiExample(word:"印刷", reading:"いんさつ", meaning:"printing")]),
        Kanji(id:"栄", meanings:["flourish", "glory"], onyomi:["エイ"], kunyomi:["さか", "は"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"繁栄", reading:"はんえい", meaning:"prosperity"),
            KanjiExample(word:"名誉", reading:"めいよ", meaning:"honor")]),
        Kanji(id:"液", meanings:["liquid", "fluid"], onyomi:["エキ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"液体", reading:"えきたい", meaning:"liquid"),
            KanjiExample(word:"血液", reading:"けつえき", meaning:"blood")]),
        Kanji(id:"鉛", meanings:["lead", "pencil"], onyomi:["エン"], kunyomi:["なまり"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"鉛筆", reading:"えんぴつ", meaning:"pencil"),
            KanjiExample(word:"鉛", reading:"なまり", meaning:"lead (metal)")]),
        Kanji(id:"汚", meanings:["dirty", "pollute"], onyomi:["オ"], kunyomi:["よご", "きたな"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"汚れる", reading:"よごれる", meaning:"to get dirty"),
            KanjiExample(word:"汚染", reading:"おせん", meaning:"pollution")]),
        Kanji(id:"可", meanings:["possible", "allow"], onyomi:["カ"], kunyomi:[], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"可能", reading:"かのう", meaning:"possible"),
            KanjiExample(word:"許可", reading:"きょか", meaning:"permission")]),
        Kanji(id:"仮", meanings:["temporary", "false"], onyomi:["カ", "ケ"], kunyomi:["かり"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"仮定", reading:"かてい", meaning:"assumption"),
            KanjiExample(word:"仮に", reading:"かりに", meaning:"hypothetically")]),
        Kanji(id:"課", meanings:["section", "lesson", "impose"], onyomi:["カ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"課題", reading:"かだい", meaning:"task/issue"),
            KanjiExample(word:"課長", reading:"かちょう", meaning:"section chief")]),
        Kanji(id:"幅", meanings:["width", "margin"], onyomi:["フク"], kunyomi:["はば"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"幅", reading:"はば", meaning:"width"),
            KanjiExample(word:"幅広い", reading:"はばひろい", meaning:"wide-ranging")]),
        Kanji(id:"刺", meanings:["stab", "prick", "stimulate"], onyomi:["シ"], kunyomi:["さ", "とげ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"刺激", reading:"しげき", meaning:"stimulus"),
            KanjiExample(word:"名刺", reading:"めいし", meaning:"business card")]),
        Kanji(id:"枝", meanings:["branch", "twig"], onyomi:["シ"], kunyomi:["えだ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"枝", reading:"えだ", meaning:"branch"),
            KanjiExample(word:"枝葉", reading:"えだは", meaning:"branches and leaves")]),
        Kanji(id:"紙", meanings:["paper"], onyomi:["シ"], kunyomi:["かみ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"紙", reading:"かみ", meaning:"paper"),
            KanjiExample(word:"手紙", reading:"てがみ", meaning:"letter")]),
        Kanji(id:"需", meanings:["demand", "need"], onyomi:["ジュ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"需要", reading:"じゅよう", meaning:"demand"),
            KanjiExample(word:"必需", reading:"ひつじゅ", meaning:"necessity")]),
        Kanji(id:"順", meanings:["order", "obey"], onyomi:["ジュン"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"順番", reading:"じゅんばん", meaning:"order/turn"),
            KanjiExample(word:"順調", reading:"じゅんちょう", meaning:"smooth progress")]),
        Kanji(id:"紹", meanings:["introduce"], onyomi:["ショウ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"紹介", reading:"しょうかい", meaning:"introduction"),
            KanjiExample(word:"自己紹介", reading:"じこしょうかい", meaning:"self-introduction")]),
        Kanji(id:"条", meanings:["article", "clause"], onyomi:["ジョウ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"条件", reading:"じょうけん", meaning:"condition"),
            KanjiExample(word:"条約", reading:"じょうやく", meaning:"treaty")]),
        Kanji(id:"審", meanings:["judge", "examine"], onyomi:["シン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"審査", reading:"しんさ", meaning:"screening/examination"),
            KanjiExample(word:"審判", reading:"しんぱん", meaning:"referee/judgment")]),
        Kanji(id:"征", meanings:["conquer", "expedition"], onyomi:["セイ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"征服", reading:"せいふく", meaning:"conquest"),
            KanjiExample(word:"遠征", reading:"えんせい", meaning:"expedition")]),
        Kanji(id:"染", meanings:["dye", "infect"], onyomi:["セン"], kunyomi:["そ", "し"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"感染", reading:"かんせん", meaning:"infection"),
            KanjiExample(word:"汚染", reading:"おせん", meaning:"pollution")]),
        Kanji(id:"属", meanings:["belong", "genus"], onyomi:["ゾク"], kunyomi:["さかな"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"所属", reading:"しょぞく", meaning:"affiliation"),
            KanjiExample(word:"属する", reading:"ぞくする", meaning:"to belong")]),
        Kanji(id:"択", meanings:["select", "choose"], onyomi:["タク"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"選択", reading:"せんたく", meaning:"selection"),
            KanjiExample(word:"択一", reading:"たくいつ", meaning:"choosing one")]),
        Kanji(id:"担", meanings:["bear", "carry"], onyomi:["タン"], kunyomi:["にな", "かつ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"担当", reading:"たんとう", meaning:"in charge"),
            KanjiExample(word:"担う", reading:"になう", meaning:"to bear")]),
        Kanji(id:"探", meanings:["search", "explore"], onyomi:["タン"], kunyomi:["さが", "さぐ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"探す", reading:"さがす", meaning:"to search"),
            KanjiExample(word:"探偵", reading:"たんてい", meaning:"detective")]),
        Kanji(id:"誕", meanings:["birth"], onyomi:["タン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"誕生", reading:"たんじょう", meaning:"birth"),
            KanjiExample(word:"誕生日", reading:"たんじょうび", meaning:"birthday")]),
        Kanji(id:"蓄", meanings:["store", "save"], onyomi:["チク"], kunyomi:["たくわ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"蓄積", reading:"ちくせき", meaning:"accumulation"),
            KanjiExample(word:"貯蓄", reading:"ちょちく", meaning:"savings")]),
        Kanji(id:"賃", meanings:["rent", "wages"], onyomi:["チン"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"賃金", reading:"ちんぎん", meaning:"wages"),
            KanjiExample(word:"家賃", reading:"やちん", meaning:"rent")]),
        Kanji(id:"党", meanings:["party", "faction"], onyomi:["トウ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"政党", reading:"せいとう", meaning:"political party"),
            KanjiExample(word:"与党", reading:"よとう", meaning:"ruling party")]),
        Kanji(id:"納", meanings:["pay", "deliver"], onyomi:["ノウ", "ナ", "ナッ", "ナン"], kunyomi:["おさ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"納税", reading:"のうぜい", meaning:"tax payment"),
            KanjiExample(word:"納得", reading:"なっとく", meaning:"understanding")]),
        Kanji(id:"把", meanings:["grasp", "bundle"], onyomi:["ハ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"把握", reading:"はあく", meaning:"grasp/understanding"),
            KanjiExample(word:"一把", reading:"いちわ", meaning:"one bundle")]),
        Kanji(id:"範", meanings:["model", "example"], onyomi:["ハン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"範囲", reading:"はんい", meaning:"range"),
            KanjiExample(word:"模範", reading:"もはん", meaning:"model/example")]),
        Kanji(id:"侮", meanings:["despise", "scorn"], onyomi:["ブ"], kunyomi:["あなど"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"侮辱", reading:"ぶじょく", meaning:"insult"),
            KanjiExample(word:"侮る", reading:"あなどる", meaning:"to despise")]),
        Kanji(id:"幕", meanings:["curtain", "shogunate"], onyomi:["マク", "バク"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"幕府", reading:"ばくふ", meaning:"shogunate"),
            KanjiExample(word:"開幕", reading:"かいまく", meaning:"opening")]),
        Kanji(id:"慢", meanings:["arrogant", "slow"], onyomi:["マン"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"我慢", reading:"がまん", meaning:"endurance"),
            KanjiExample(word:"怠慢", reading:"たいまん", meaning:"negligence")]),
        Kanji(id:"命", meanings:["life", "order"], onyomi:["メイ", "ミョウ"], kunyomi:["いのち"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"命", reading:"いのち", meaning:"life"),
            KanjiExample(word:"使命", reading:"しめい", meaning:"mission")]),
        Kanji(id:"免", meanings:["exempt", "excuse"], onyomi:["メン"], kunyomi:["まぬが"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"免許", reading:"めんきょ", meaning:"license"),
            KanjiExample(word:"免税", reading:"めんぜい", meaning:"tax exemption")]),
        Kanji(id:"優", meanings:["gentle", "superior"], onyomi:["ユウ"], kunyomi:["やさ", "すぐ"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"優しい", reading:"やさしい", meaning:"gentle"),
            KanjiExample(word:"優秀", reading:"ゆうしゅう", meaning:"excellent")]),
        Kanji(id:"余", meanings:["extra", "leftover"], onyomi:["ヨ"], kunyomi:["あま"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"余裕", reading:"よゆう", meaning:"margin/room"),
            KanjiExample(word:"余分", reading:"よぶん", meaning:"extra")]),
        Kanji(id:"容", meanings:["contain", "appearance"], onyomi:["ヨウ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"内容", reading:"ないよう", meaning:"content"),
            KanjiExample(word:"容易", reading:"ようい", meaning:"easy")]),
        Kanji(id:"陽", meanings:["sun", "positive"], onyomi:["ヨウ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"太陽", reading:"たいよう", meaning:"sun"),
            KanjiExample(word:"陽気", reading:"ようき", meaning:"cheerful")]),
        Kanji(id:"労", meanings:["labor", "work"], onyomi:["ロウ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"労働", reading:"ろうどう", meaning:"labor"),
            KanjiExample(word:"苦労", reading:"くろう", meaning:"hardship")]),
        Kanji(id:"惑", meanings:["confuse", "tempt"], onyomi:["ワク"], kunyomi:["まど"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"困惑", reading:"こんわく", meaning:"bewilderment"),
            KanjiExample(word:"誘惑", reading:"ゆうわく", meaning:"temptation")]),
        Kanji(id:"枠", meanings:["frame", "limit"], onyomi:["わく"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"枠", reading:"わく", meaning:"frame/limit"),
            KanjiExample(word:"枠組み", reading:"わくぐみ", meaning:"framework")]),
        Kanji(id:"圏", meanings:["range", "sphere"], onyomi:["ケン"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"首都圏", reading:"しゅとけん", meaning:"capital region"),
            KanjiExample(word:"経済圏", reading:"けいざいけん", meaning:"economic zone")]),
        Kanji(id:"契", meanings:["contract", "promise"], onyomi:["ケイ"], kunyomi:["ちぎ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"契約", reading:"けいやく", meaning:"contract"),
            KanjiExample(word:"契機", reading:"けいき", meaning:"opportunity")]),
        Kanji(id:"源", meanings:["source", "origin"], onyomi:["ゲン"], kunyomi:["みなもと"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"資源", reading:"しげん", meaning:"resource"),
            KanjiExample(word:"源", reading:"みなもと", meaning:"source/origin")]),
        Kanji(id:"降", meanings:["descend", "fall"], onyomi:["コウ"], kunyomi:["お", "ふ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"降りる", reading:"おりる", meaning:"to get off"),
            KanjiExample(word:"降る", reading:"ふる", meaning:"to fall (rain/snow)")]),
        Kanji(id:"貢", meanings:["tribute", "contribute"], onyomi:["コウ", "ク"], kunyomi:["みつ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"貢献", reading:"こうけん", meaning:"contribution"),
            KanjiExample(word:"貢ぐ", reading:"みつぐ", meaning:"to pay tribute")]),
        Kanji(id:"克", meanings:["overcome"], onyomi:["コク"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"克服", reading:"こくふく", meaning:"overcoming"),
            KanjiExample(word:"克明", reading:"こくめい", meaning:"detailed")]),
        Kanji(id:"財", meanings:["wealth", "property"], onyomi:["ザイ", "サイ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"財産", reading:"ざいさん", meaning:"property"),
            KanjiExample(word:"財政", reading:"ざいせい", meaning:"public finance")]),
        Kanji(id:"鎖", meanings:["chain", "lock"], onyomi:["サ"], kunyomi:[], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"封鎖", reading:"ふうさ", meaning:"blockade"),
            KanjiExample(word:"鎖国", reading:"さこく", meaning:"national isolation")]),
        Kanji(id:"差", meanings:["difference", "discriminate"], onyomi:["サ"], kunyomi:["さ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"差別", reading:"さべつ", meaning:"discrimination"),
            KanjiExample(word:"差異", reading:"さい", meaning:"difference")]),
        Kanji(id:"賛", meanings:["approve", "praise"], onyomi:["サン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"賛成", reading:"さんせい", meaning:"agreement"),
            KanjiExample(word:"賛否", reading:"さんぴ", meaning:"pros and cons")]),
        Kanji(id:"暫", meanings:["temporarily"], onyomi:["ザン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"暫定", reading:"ざんてい", meaning:"provisional"),
            KanjiExample(word:"暫く", reading:"しばらく", meaning:"for a while")]),
        Kanji(id:"緊", meanings:["tense", "tight"], onyomi:["キン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"緊張", reading:"きんちょう", meaning:"tension"),
            KanjiExample(word:"緊急", reading:"きんきゅう", meaning:"urgent")]),
        Kanji(id:"誌", meanings:["magazine", "record"], onyomi:["シ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"雑誌", reading:"ざっし", meaning:"magazine"),
            KanjiExample(word:"日誌", reading:"にっし", meaning:"daily record")]),
        Kanji(id:"拠", meanings:["base", "basis"], onyomi:["キョ", "コ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"根拠", reading:"こんきょ", meaning:"basis"),
            KanjiExample(word:"本拠", reading:"ほんきょ", meaning:"headquarters")]),
        Kanji(id:"充", meanings:["fill", "sufficient"], onyomi:["ジュウ"], kunyomi:["あ"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"充実", reading:"じゅうじつ", meaning:"fulfillment"),
            KanjiExample(word:"充電", reading:"じゅうでん", meaning:"charging")]),
        Kanji(id:"渋", meanings:["astringent", "slow"], onyomi:["ジュウ"], kunyomi:["しぶ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"渋滞", reading:"じゅうたい", meaning:"traffic jam"),
            KanjiExample(word:"渋い", reading:"しぶい", meaning:"astringent/cool")]),
        Kanji(id:"従", meanings:["follow", "obey"], onyomi:["ジュウ", "ショウ"], kunyomi:["したが"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"従う", reading:"したがう", meaning:"to follow"),
            KanjiExample(word:"服従", reading:"ふくじゅう", meaning:"obedience")]),
        Kanji(id:"柔", meanings:["soft", "gentle"], onyomi:["ジュウ", "ニュウ"], kunyomi:["やわ"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"柔らかい", reading:"やわらかい", meaning:"soft"),
            KanjiExample(word:"柔道", reading:"じゅうどう", meaning:"judo")]),
        Kanji(id:"就", meanings:["take up", "finish"], onyomi:["シュウ", "ジュ"], kunyomi:["つ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"就職", reading:"しゅうしょく", meaning:"getting a job"),
            KanjiExample(word:"就任", reading:"しゅうにん", meaning:"inauguration")]),
        Kanji(id:"冗", meanings:["superfluous", "verbose"], onyomi:["ジョウ"], kunyomi:[], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"冗談", reading:"じょうだん", meaning:"joke"),
            KanjiExample(word:"冗長", reading:"じょうちょう", meaning:"verbose")]),
        Kanji(id:"蒸", meanings:["steam", "evaporate"], onyomi:["ジョウ"], kunyomi:["む"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"蒸発", reading:"じょうはつ", meaning:"evaporation"),
            KanjiExample(word:"蒸気", reading:"じょうき", meaning:"steam")]),
        Kanji(id:"伸", meanings:["stretch", "extend"], onyomi:["シン"], kunyomi:["の"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"伸びる", reading:"のびる", meaning:"to extend"),
            KanjiExample(word:"伸ばす", reading:"のばす", meaning:"to stretch")]),
        Kanji(id:"振", meanings:["shake", "wave"], onyomi:["シン"], kunyomi:["ふ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"振る", reading:"ふる", meaning:"to wave/shake"),
            KanjiExample(word:"振り返る", reading:"ふりかえる", meaning:"to look back")]),
        Kanji(id:"吹", meanings:["blow"], onyomi:["スイ"], kunyomi:["ふ"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"吹く", reading:"ふく", meaning:"to blow"),
            KanjiExample(word:"吹雪", reading:"ふぶき", meaning:"blizzard")]),
        Kanji(id:"据", meanings:["set", "install"], onyomi:["すえ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"据える", reading:"すえる", meaning:"to install"),
            KanjiExample(word:"据え置く", reading:"すえおく", meaning:"to leave as is")]),
        Kanji(id:"析", meanings:["analyze", "split"], onyomi:["セキ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"分析", reading:"ぶんせき", meaning:"analysis"),
            KanjiExample(word:"解析", reading:"かいせき", meaning:"analysis")]),
        Kanji(id:"績", meanings:["achievement", "spin"], onyomi:["セキ"], kunyomi:[], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"業績", reading:"ぎょうせき", meaning:"achievement"),
            KanjiExample(word:"成績", reading:"せいせき", meaning:"grades/results")]),
        Kanji(id:"摂", meanings:["absorb", "take"], onyomi:["セツ"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"摂取", reading:"せっしゅ", meaning:"intake"),
            KanjiExample(word:"摂氏", reading:"せっし", meaning:"Celsius")]),
        Kanji(id:"潜", meanings:["hide", "submerge"], onyomi:["セン"], kunyomi:["もぐ"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"潜在", reading:"せんざい", meaning:"latent"),
            KanjiExample(word:"潜る", reading:"もぐる", meaning:"to dive")]),
        Kanji(id:"鮮", meanings:["fresh", "vivid"], onyomi:["セン"], kunyomi:["あざ"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"新鮮", reading:"しんせん", meaning:"fresh"),
            KanjiExample(word:"鮮明", reading:"せんめい", meaning:"clear/vivid")]),
        Kanji(id:"操", meanings:["operate", "manipulate"], onyomi:["ソウ"], kunyomi:["みさお", "あやつ"], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"操作", reading:"そうさ", meaning:"operation"),
            KanjiExample(word:"操る", reading:"あやつる", meaning:"to manipulate")]),
        Kanji(id:"双", meanings:["pair", "both"], onyomi:["ソウ"], kunyomi:["ふた"], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"双方", reading:"そうほう", meaning:"both sides"),
            KanjiExample(word:"双子", reading:"ふたご", meaning:"twins")]),
        Kanji(id:"措", meanings:["handle", "manage"], onyomi:["ソ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"措置", reading:"そち", meaning:"measure/action"),
            KanjiExample(word:"処置", reading:"しょち", meaning:"treatment")]),
        Kanji(id:"促", meanings:["urge", "hasten"], onyomi:["ソク"], kunyomi:["うなが"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"促す", reading:"うながす", meaning:"to urge"),
            KanjiExample(word:"促進", reading:"そくしん", meaning:"promotion")]),
        Kanji(id:"帯", meanings:["belt", "wear"], onyomi:["タイ"], kunyomi:["お"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"地帯", reading:"ちたい", meaning:"zone/belt"),
            KanjiExample(word:"携帯", reading:"けいたい", meaning:"mobile phone")]),
        Kanji(id:"滞", meanings:["stagnate", "delay"], onyomi:["タイ"], kunyomi:["とどこお"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"渋滞", reading:"じゅうたい", meaning:"traffic jam"),
            KanjiExample(word:"滞在", reading:"たいざい", meaning:"stay")]),
        Kanji(id:"沢", meanings:["swamp", "many"], onyomi:["タク"], kunyomi:["さわ"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"沢山", reading:"たくさん", meaning:"many"),
            KanjiExample(word:"恩沢", reading:"おんたく", meaning:"benevolence")]),
        Kanji(id:"弾", meanings:["bullet", "play instrument"], onyomi:["ダン"], kunyomi:["ひ", "たま"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"弾む", reading:"はずむ", meaning:"to bounce"),
            KanjiExample(word:"弾く", reading:"ひく", meaning:"to play (instrument)")]),
        Kanji(id:"鎮", meanings:["calm", "suppress"], onyomi:["チン"], kunyomi:["しず"], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"鎮める", reading:"しずめる", meaning:"to calm"),
            KanjiExample(word:"鎮痛", reading:"ちんつう", meaning:"pain relief")]),
        Kanji(id:"超", meanings:["exceed", "super"], onyomi:["チョウ"], kunyomi:["こ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"超える", reading:"こえる", meaning:"to exceed"),
            KanjiExample(word:"超大国", reading:"ちょうたいこく", meaning:"superpower")]),
        Kanji(id:"跳", meanings:["jump", "leap"], onyomi:["チョウ"], kunyomi:["と", "は"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"跳ぶ", reading:"とぶ", meaning:"to jump"),
            KanjiExample(word:"跳ね返る", reading:"はねかえる", meaning:"to bounce back")]),
        Kanji(id:"捗", meanings:["progress", "advance"], onyomi:["ホク"], kunyomi:["はかど"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"進捗", reading:"しんちょく", meaning:"progress"),
            KanjiExample(word:"捗る", reading:"はかどる", meaning:"to make progress")]),
        Kanji(id:"摘", meanings:["pick", "point out"], onyomi:["テキ"], kunyomi:["つ"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"指摘", reading:"してき", meaning:"pointing out"),
            KanjiExample(word:"摘む", reading:"つむ", meaning:"to pick")]),
        Kanji(id:"適", meanings:["suitable", "fit"], onyomi:["テキ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"適切", reading:"てきせつ", meaning:"appropriate"),
            KanjiExample(word:"適応", reading:"てきおう", meaning:"adaptation")]),
        Kanji(id:"撤", meanings:["withdraw", "remove"], onyomi:["テツ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"撤退", reading:"てったい", meaning:"withdrawal"),
            KanjiExample(word:"撤廃", reading:"てっぱい", meaning:"abolition")]),
        Kanji(id:"匿", meanings:["hide", "conceal"], onyomi:["トク"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"匿名", reading:"とくめい", meaning:"anonymous"),
            KanjiExample(word:"秘匿", reading:"ひとく", meaning:"concealment")]),
        Kanji(id:"鈍", meanings:["dull", "slow"], onyomi:["ドン"], kunyomi:["なま"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"鈍い", reading:"にぶい", meaning:"dull"),
            KanjiExample(word:"鈍感", reading:"どんかん", meaning:"insensitive")]),
        Kanji(id:"軟", meanings:["soft", "flexible"], onyomi:["ナン"], kunyomi:["やわ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"軟らかい", reading:"やわらかい", meaning:"soft"),
            KanjiExample(word:"軟化", reading:"なんか", meaning:"softening")]),
        Kanji(id:"培", meanings:["cultivate", "foster"], onyomi:["バイ"], kunyomi:["つちか"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"培養", reading:"ばいよう", meaning:"culture/cultivation"),
            KanjiExample(word:"培う", reading:"つちかう", meaning:"to cultivate")]),
        Kanji(id:"搬", meanings:["carry", "transport"], onyomi:["ハン"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"搬送", reading:"はんそう", meaning:"transport"),
            KanjiExample(word:"運搬", reading:"うんぱん", meaning:"transportation")]),
        Kanji(id:"扉", meanings:["door", "title page"], onyomi:["ヒ"], kunyomi:["とびら"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"扉", reading:"とびら", meaning:"door/gate"),
            KanjiExample(word:"扉を開く", reading:"とびらをひらく", meaning:"to open a door")]),
        Kanji(id:"微", meanings:["slight", "minute"], onyomi:["ビ", "ミ"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"微笑む", reading:"ほほえむ", meaning:"to smile"),
            KanjiExample(word:"微妙", reading:"びみょう", meaning:"subtle/delicate")]),
        Kanji(id:"豊", meanings:["rich", "abundant"], onyomi:["ホウ"], kunyomi:["ゆた"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"豊か", reading:"ゆたか", meaning:"rich/abundant"),
            KanjiExample(word:"豊富", reading:"ほうふ", meaning:"abundant")]),
        Kanji(id:"矛", meanings:["spear", "contradiction"], onyomi:["ム"], kunyomi:["ほこ"], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"矛盾", reading:"むじゅん", meaning:"contradiction"),
            KanjiExample(word:"矛", reading:"ほこ", meaning:"spear")]),
        Kanji(id:"娘", meanings:["daughter", "girl"], onyomi:["ジョウ"], kunyomi:["むすめ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"娘", reading:"むすめ", meaning:"daughter"),
            KanjiExample(word:"一人娘", reading:"ひとりむすめ", meaning:"only daughter")]),
        Kanji(id:"網", meanings:["net", "network"], onyomi:["モウ"], kunyomi:["あみ"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"網", reading:"あみ", meaning:"net"),
            KanjiExample(word:"情報網", reading:"じょうほうもう", meaning:"information network")]),
        Kanji(id:"戻", meanings:["return", "revert"], onyomi:["レイ"], kunyomi:["もど"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"戻る", reading:"もどる", meaning:"to return"),
            KanjiExample(word:"取り戻す", reading:"とりもどす", meaning:"to recover")]),
        Kanji(id:"盲", meanings:["blind", "ignorant"], onyomi:["モウ"], kunyomi:["めくら"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"盲点", reading:"もうてん", meaning:"blind spot"),
            KanjiExample(word:"色盲", reading:"しきもう", meaning:"color blindness")]),
        Kanji(id:"躍", meanings:["jump", "leap"], onyomi:["ヤク"], kunyomi:["おど"], level:.N2, strokeCount:21, examples:[
            KanjiExample(word:"活躍", reading:"かつやく", meaning:"active role"),
            KanjiExample(word:"躍進", reading:"やくしん", meaning:"leap forward")]),
        Kanji(id:"雄", meanings:["male", "hero"], onyomi:["ユウ"], kunyomi:["お", "おす"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"英雄", reading:"えいゆう", meaning:"hero"),
            KanjiExample(word:"雄大", reading:"ゆうだい", meaning:"grand")]),
        Kanji(id:"融", meanings:["melt", "finance"], onyomi:["ユウ"], kunyomi:["と"], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"融合", reading:"ゆうごう", meaning:"fusion"),
            KanjiExample(word:"金融", reading:"きんゆう", meaning:"finance")]),
        Kanji(id:"翌", meanings:["next", "following"], onyomi:["ヨク"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"翌日", reading:"よくじつ", meaning:"next day"),
            KanjiExample(word:"翌年", reading:"よくねん", meaning:"next year")]),
        Kanji(id:"拉", meanings:["pull", "abduct"], onyomi:["ラ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"拉致", reading:"らち", meaning:"abduction"),
            KanjiExample(word:"拉致問題", reading:"らちもんだい", meaning:"abduction issue")]),
        Kanji(id:"络", meanings:["connect", "bind"], onyomi:["ラク"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"連絡", reading:"れんらく", meaning:"contact"),
            KanjiExample(word:"絡む", reading:"からむ", meaning:"to get entangled")]),
        Kanji(id:"覧", meanings:["look", "inspect"], onyomi:["ラン"], kunyomi:[], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"一覧", reading:"いちらん", meaning:"list"),
            KanjiExample(word:"展覧会", reading:"てんらんかい", meaning:"exhibition")]),
        Kanji(id:"劣", meanings:["inferior", "poor"], onyomi:["レツ"], kunyomi:["おと"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"劣る", reading:"おとる", meaning:"to be inferior"),
            KanjiExample(word:"優劣", reading:"ゆうれつ", meaning:"superiority and inferiority")]),
        Kanji(id:"渇", meanings:["thirst", "dry up"], onyomi:["カツ"], kunyomi:["かわ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"渇く", reading:"かわく", meaning:"to be thirsty"),
            KanjiExample(word:"渇望", reading:"かつぼう", meaning:"longing")]),
        Kanji(id:"喝", meanings:["shout", "scold"], onyomi:["カツ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"喝", reading:"かつ", meaning:"shout of encouragement"),
            KanjiExample(word:"喝采", reading:"かっさい", meaning:"applause")]),
        Kanji(id:"換", meanings:["exchange", "replace"], onyomi:["カン"], kunyomi:["か"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"交換", reading:"こうかん", meaning:"exchange"),
            KanjiExample(word:"換える", reading:"かえる", meaning:"to replace")]),
        Kanji(id:"貫", meanings:["pierce", "penetrate"], onyomi:["カン"], kunyomi:["つらぬ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"貫く", reading:"つらぬく", meaning:"to penetrate"),
            KanjiExample(word:"一貫", reading:"いっかん", meaning:"consistent")]),
        Kanji(id:"危", meanings:["dangerous", "fear"], onyomi:["キ"], kunyomi:["あぶ", "あや"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"危険", reading:"きけん", meaning:"danger"),
            KanjiExample(word:"危機", reading:"きき", meaning:"crisis")]),
        Kanji(id:"儀", meanings:["ceremony", "manner"], onyomi:["ギ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"礼儀", reading:"れいぎ", meaning:"courtesy"),
            KanjiExample(word:"儀式", reading:"ぎしき", meaning:"ceremony")]),
        Kanji(id:"吸", meanings:["inhale", "absorb"], onyomi:["キュウ"], kunyomi:["す"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"吸う", reading:"すう", meaning:"to inhale"),
            KanjiExample(word:"呼吸", reading:"こきゅう", meaning:"breathing")]),
        Kanji(id:"極", meanings:["pole", "extreme"], onyomi:["キョク", "ゴク"], kunyomi:["きわ", "きわ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"極端", reading:"きょくたん", meaning:"extreme"),
            KanjiExample(word:"北極", reading:"ほっきょく", meaning:"North Pole")]),
        Kanji(id:"凶", meanings:["bad luck", "disaster"], onyomi:["キョウ"], kunyomi:[], level:.N2, strokeCount:4, examples:[
            KanjiExample(word:"凶悪", reading:"きょうあく", meaning:"brutal"),
            KanjiExample(word:"凶器", reading:"きょうき", meaning:"weapon")]),
        Kanji(id:"挙", meanings:["raise", "nominate"], onyomi:["キョ"], kunyomi:["あ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"選挙", reading:"せんきょ", meaning:"election"),
            KanjiExample(word:"一挙", reading:"いっきょ", meaning:"at one stroke")]),
        Kanji(id:"勤", meanings:["work", "diligent"], onyomi:["キン", "ゴン"], kunyomi:["つと"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"勤める", reading:"つとめる", meaning:"to work"),
            KanjiExample(word:"勤務", reading:"きんむ", meaning:"duty/service")]),
        Kanji(id:"矩", meanings:["rule", "square"], onyomi:["ク"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"規矩", reading:"きく", meaning:"standard"),
            KanjiExample(word:"矩形", reading:"くけい", meaning:"rectangle")]),
        Kanji(id:"偶", meanings:["by chance", "couple"], onyomi:["グウ"], kunyomi:["たま"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"偶然", reading:"ぐうぜん", meaning:"coincidence"),
            KanjiExample(word:"配偶者", reading:"はいぐうしゃ", meaning:"spouse")]),
        Kanji(id:"掲", meanings:["post", "display"], onyomi:["ケイ"], kunyomi:["かか"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"掲載", reading:"けいさい", meaning:"publication"),
            KanjiExample(word:"掲示", reading:"けいじ", meaning:"notice/posting")]),
        Kanji(id:"慶", meanings:["celebrate", "congratulate"], onyomi:["ケイ"], kunyomi:["よろこ"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"慶賀", reading:"けいが", meaning:"congratulation"),
            KanjiExample(word:"慶応", reading:"けいおう", meaning:"Keio")]),
        Kanji(id:"遣", meanings:["send", "use"], onyomi:["ケン"], kunyomi:["つか"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"遣う", reading:"つかう", meaning:"to use"),
            KanjiExample(word:"派遣", reading:"はけん", meaning:"dispatch")]),
        Kanji(id:"絹", meanings:["silk"], onyomi:["ケン"], kunyomi:["きぬ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"絹", reading:"きぬ", meaning:"silk"),
            KanjiExample(word:"絹糸", reading:"きぬいと", meaning:"silk thread")]),
        Kanji(id:"庫", meanings:["warehouse", "storehouse"], onyomi:["コ", "ク"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"倉庫", reading:"そうこ", meaning:"warehouse"),
            KanjiExample(word:"車庫", reading:"しゃこ", meaning:"garage")]),
        Kanji(id:"綱", meanings:["rope", "policy"], onyomi:["コウ"], kunyomi:["つな"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"綱領", reading:"こうりょう", meaning:"platform"),
            KanjiExample(word:"綱", reading:"つな", meaning:"rope")]),
        Kanji(id:"酵", meanings:["ferment"], onyomi:["コウ"], kunyomi:[], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"酵母", reading:"こうぼ", meaning:"yeast"),
            KanjiExample(word:"発酵", reading:"はっこう", meaning:"fermentation")]),
        Kanji(id:"込", meanings:["crowded", "into"], onyomi:["コム"], kunyomi:["こ"], level:.N2, strokeCount:5, examples:[
            KanjiExample(word:"込む", reading:"こむ", meaning:"to be crowded"),
            KanjiExample(word:"申し込む", reading:"もうしこむ", meaning:"to apply")]),
        Kanji(id:"催", meanings:["hold", "urge"], onyomi:["サイ"], kunyomi:["もよお"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"開催", reading:"かいさい", meaning:"holding (event)"),
            KanjiExample(word:"催す", reading:"もよおす", meaning:"to hold/feel")]),
        Kanji(id:"歳", meanings:["age", "year"], onyomi:["サイ", "セイ"], kunyomi:["とし"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"年歳", reading:"ねんさい", meaning:"age"),
            KanjiExample(word:"歳末", reading:"さいまつ", meaning:"year-end")]),
        Kanji(id:"罪", meanings:["crime", "sin"], onyomi:["ザイ"], kunyomi:["つみ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"犯罪", reading:"はんざい", meaning:"crime"),
            KanjiExample(word:"罪悪", reading:"ざいあく", meaning:"wrongdoing")]),
        Kanji(id:"剤", meanings:["medicine", "dose"], onyomi:["ザイ"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"洗剤", reading:"せんざい", meaning:"detergent"),
            KanjiExample(word:"錠剤", reading:"じょうざい", meaning:"tablet")]),
        Kanji(id:"搾", meanings:["squeeze", "extract"], onyomi:["サク"], kunyomi:["しぼ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"搾取", reading:"さくしゅ", meaning:"exploitation"),
            KanjiExample(word:"搾る", reading:"しぼる", meaning:"to squeeze")]),
        Kanji(id:"嗣", meanings:["heir", "succeed"], onyomi:["シ"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"嗣子", reading:"しし", meaning:"heir"),
            KanjiExample(word:"後嗣", reading:"こうし", meaning:"successor")]),
        Kanji(id:"紫", meanings:["purple"], onyomi:["シ"], kunyomi:["むらさき"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"紫", reading:"むらさき", meaning:"purple"),
            KanjiExample(word:"紫外線", reading:"しがいせん", meaning:"ultraviolet rays")]),
        Kanji(id:"醒", meanings:["wake up", "sober"], onyomi:["セイ"], kunyomi:["さ"], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"覚醒", reading:"かくせい", meaning:"awakening"),
            KanjiExample(word:"酔いが醒める", reading:"よいがさめる", meaning:"to sober up")]),
        Kanji(id:"籍", meanings:["register", "record"], onyomi:["セキ"], kunyomi:[], level:.N2, strokeCount:20, examples:[
            KanjiExample(word:"国籍", reading:"こくせき", meaning:"nationality"),
            KanjiExample(word:"戸籍", reading:"こせき", meaning:"family register")]),
        Kanji(id:"跡", meanings:["trace", "ruins"], onyomi:["セキ"], kunyomi:["あと"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"跡", reading:"あと", meaning:"trace/ruins"),
            KanjiExample(word:"追跡", reading:"ついせき", meaning:"tracking")]),
        Kanji(id:"銭", meanings:["money", "coin"], onyomi:["セン"], kunyomi:["ぜに"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"お金", reading:"おかね", meaning:"money"),
            KanjiExample(word:"銭湯", reading:"せんとう", meaning:"public bath")]),
        Kanji(id:"遷", meanings:["move", "transfer"], onyomi:["セン"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"変遷", reading:"へんせん", meaning:"change"),
            KanjiExample(word:"遷都", reading:"せんと", meaning:"moving the capital")]),
        Kanji(id:"葬", meanings:["funeral", "bury"], onyomi:["ソウ"], kunyomi:["ほうむ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"葬式", reading:"そうしき", meaning:"funeral"),
            KanjiExample(word:"火葬", reading:"かそう", meaning:"cremation")]),
        Kanji(id:"訴", meanings:["sue", "appeal"], onyomi:["ソ"], kunyomi:["うった"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"訴える", reading:"うったえる", meaning:"to appeal"),
            KanjiExample(word:"起訴", reading:"きそ", meaning:"indictment")]),
        Kanji(id:"胎", meanings:["womb", "embryo"], onyomi:["タイ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"胎児", reading:"たいじ", meaning:"fetus"),
            KanjiExample(word:"胎教", reading:"たいきょう", meaning:"prenatal education")]),
        Kanji(id:"怠", meanings:["lazy", "neglect"], onyomi:["タイ"], kunyomi:["おこた", "なま"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"怠る", reading:"おこたる", meaning:"to neglect"),
            KanjiExample(word:"怠惰", reading:"たいだ", meaning:"laziness")]),
        Kanji(id:"智", meanings:["wisdom", "intellect"], onyomi:["チ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"智慧", reading:"ちえ", meaning:"wisdom"),
            KanjiExample(word:"知的", reading:"ちてき", meaning:"intellectual")]),
        Kanji(id:"陳", meanings:["display", "old"], onyomi:["チン"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"陳列", reading:"ちんれつ", meaning:"display"),
            KanjiExample(word:"新陳代謝", reading:"しんちんたいしゃ", meaning:"metabolism")]),
        Kanji(id:"墜", meanings:["fall", "crash"], onyomi:["ツイ"], kunyomi:[], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"墜落", reading:"ついらく", meaning:"crash/fall"),
            KanjiExample(word:"撃墜", reading:"げきつい", meaning:"shooting down")]),
        Kanji(id:"抵", meanings:["resist", "mortgage"], onyomi:["テイ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"抵抗", reading:"ていこう", meaning:"resistance"),
            KanjiExample(word:"抵当", reading:"ていとう", meaning:"mortgage")]),
        Kanji(id:"透", meanings:["transparent", "penetrate"], onyomi:["トウ"], kunyomi:["す"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"透明", reading:"とうめい", meaning:"transparent"),
            KanjiExample(word:"浸透", reading:"しんとう", meaning:"permeation")]),
        Kanji(id:"督", meanings:["supervise", "urge"], onyomi:["トク"], kunyomi:[], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"監督", reading:"かんとく", meaning:"director/supervisor"),
            KanjiExample(word:"督促", reading:"とくそく", meaning:"urging")]),
        Kanji(id:"尿", meanings:["urine"], onyomi:["ニョウ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"尿", reading:"にょう", meaning:"urine"),
            KanjiExample(word:"利尿", reading:"りにょう", meaning:"diuretic")]),
        Kanji(id:"粘", meanings:["stick", "viscous"], onyomi:["ネン"], kunyomi:["ねば"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"粘る", reading:"ねばる", meaning:"to persist"),
            KanjiExample(word:"粘液", reading:"ねんえき", meaning:"mucus")]),
        Kanji(id:"濃", meanings:["thick", "dark"], onyomi:["ノウ"], kunyomi:["こ"], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"濃い", reading:"こい", meaning:"thick/dark"),
            KanjiExample(word:"濃度", reading:"のうど", meaning:"concentration")]),
        Kanji(id:"拍", meanings:["beat", "clap"], onyomi:["ハク"], kunyomi:["うち"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"拍手", reading:"はくしゅ", meaning:"applause"),
            KanjiExample(word:"拍子", reading:"ひょうし", meaning:"beat/rhythm")]),
        Kanji(id:"彼", meanings:["that", "he/she"], onyomi:["ヒ"], kunyomi:["かれ", "かの"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"彼", reading:"かれ", meaning:"he"),
            KanjiExample(word:"彼女", reading:"かのじょ", meaning:"she/girlfriend")]),
        Kanji(id:"勘", meanings:["intuition", "sense"], onyomi:["カン"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"勘違い", reading:"かんちがい", meaning:"misunderstanding"),
            KanjiExample(word:"直感", reading:"ちょっかん", meaning:"intuition")]),
        Kanji(id:"熟", meanings:["ripen", "mature"], onyomi:["ジュク"], kunyomi:["う"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"熟す", reading:"うれる", meaning:"to ripen"),
            KanjiExample(word:"成熟", reading:"せいじゅく", meaning:"maturity")]),
        Kanji(id:"扱", meanings:["handle", "treat", "deal with"], onyomi:["キュウ"], kunyomi:["あつか"], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"取り扱い", reading:"とりあつかい", meaning:"handling/treatment"),
            KanjiExample(word:"扱う", reading:"あつかう", meaning:"to handle")]),
        Kanji(id:"俗", meanings:["custom", "common", "vulgar"], onyomi:["ゾク"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"風俗", reading:"ふうぞく", meaning:"customs/manners"),
            KanjiExample(word:"俗語", reading:"ぞくご", meaning:"colloquialism")]),
        Kanji(id:"棚", meanings:["shelf", "rack"], onyomi:["ホウ"], kunyomi:["たな"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"棚", reading:"たな", meaning:"shelf"),
            KanjiExample(word:"本棚", reading:"ほんだな", meaning:"bookshelf")]),
        Kanji(id:"傍", meanings:["side", "bystander", "nearby"], onyomi:["ボウ"], kunyomi:["かたわ", "そば"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"傍ら", reading:"かたわら", meaning:"beside/at the side"),
            KanjiExample(word:"傍観", reading:"ぼうかん", meaning:"watching from sidelines")]),
        Kanji(id:"隔", meanings:["separate", "isolate", "distant"], onyomi:["カク"], kunyomi:["へだ"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"隔てる", reading:"へだてる", meaning:"to separate"),
            KanjiExample(word:"間隔", reading:"かんかく", meaning:"interval/spacing")]),
        Kanji(id:"騒", meanings:["noisy", "fuss", "commotion"], onyomi:["ソウ"], kunyomi:["さわ"], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"騒ぐ", reading:"さわぐ", meaning:"to make noise"),
            KanjiExample(word:"騒音", reading:"そうおん", meaning:"noise/din")]),
        Kanji(id:"稼", meanings:["earn", "work", "cultivate"], onyomi:["カ"], kunyomi:["かせ"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"稼ぐ", reading:"かせぐ", meaning:"to earn"),
            KanjiExample(word:"稼働", reading:"かどう", meaning:"operation/running")]),
        Kanji(id:"壊", meanings:["destroy", "break", "collapse"], onyomi:["カイ", "エ"], kunyomi:["こわ"], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"壊す", reading:"こわす", meaning:"to break"),
            KanjiExample(word:"崩壊", reading:"ほうかい", meaning:"collapse/crumble")]),
        Kanji(id:"欄", meanings:["column", "railing", "blank"], onyomi:["ラン"], kunyomi:[], level:.N2, strokeCount:20, examples:[
            KanjiExample(word:"欄", reading:"らん", meaning:"column/space"),
            KanjiExample(word:"備考欄", reading:"びこうらん", meaning:"remarks column")]),
        Kanji(id:"恵", meanings:["blessing", "grace", "wisdom"], onyomi:["ケイ", "エ"], kunyomi:["めぐ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"恵む", reading:"めぐむ", meaning:"to give charitably"),
            KanjiExample(word:"恵まれる", reading:"めぐまれる", meaning:"to be blessed")]),
        Kanji(id:"鈴", meanings:["bell", "chime"], onyomi:["リン", "レイ"], kunyomi:["すず"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"鈴", reading:"すず", meaning:"bell"),
            KanjiExample(word:"風鈴", reading:"ふうりん", meaning:"wind chime")]),
        Kanji(id:"柱", meanings:["pillar", "post", "column"], onyomi:["チュウ"], kunyomi:["はしら"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"柱", reading:"はしら", meaning:"pillar"),
            KanjiExample(word:"電柱", reading:"でんちゅう", meaning:"utility pole")]),
        Kanji(id:"竜", meanings:["dragon"], onyomi:["リュウ", "ロウ"], kunyomi:["たつ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"竜", reading:"りゅう", meaning:"dragon"),
            KanjiExample(word:"竜巻", reading:"たつまき", meaning:"tornado")]),
        Kanji(id:"枕", meanings:["pillow"], onyomi:["チン"], kunyomi:["まくら"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"枕", reading:"まくら", meaning:"pillow"),
            KanjiExample(word:"枕元", reading:"まくらもと", meaning:"bedside")]),
        Kanji(id:"帳", meanings:["notebook", "curtain", "account book"], onyomi:["チョウ"], kunyomi:[], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"手帳", reading:"てちょう", meaning:"notebook/planner"),
            KanjiExample(word:"帳面", reading:"ちょうめん", meaning:"notebook")]),
        Kanji(id:"郊", meanings:["outskirts", "suburbs"], onyomi:["コウ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"郊外", reading:"こうがい", meaning:"suburbs"),
            KanjiExample(word:"近郊", reading:"きんこう", meaning:"suburbs/vicinity")]),
        Kanji(id:"欧", meanings:["Europe", "western"], onyomi:["オウ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"欧州", reading:"おうしゅう", meaning:"Europe"),
            KanjiExample(word:"欧米", reading:"おうべい", meaning:"Europe and America")]),
        Kanji(id:"頻", meanings:["frequent", "repeatedly"], onyomi:["ヒン"], kunyomi:[], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"頻繁", reading:"ひんぱん", meaning:"frequent"),
            KanjiExample(word:"頻度", reading:"ひんど", meaning:"frequency")]),
        Kanji(id:"倫", meanings:["ethics", "companion", "parallel"], onyomi:["リン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"倫理", reading:"りんり", meaning:"ethics"),
            KanjiExample(word:"倫理的", reading:"りんりてき", meaning:"ethical")]),
        Kanji(id:"旬", meanings:["10 days", "season", "best time"], onyomi:["ジュン"], kunyomi:[], level:.N2, strokeCount:6, examples:[
            KanjiExample(word:"旬", reading:"しゅん", meaning:"season/peak time"),
            KanjiExample(word:"下旬", reading:"げじゅん", meaning:"last third of month")]),
        Kanji(id:"苗", meanings:["seedling", "sapling"], onyomi:["ビョウ", "ミョウ"], kunyomi:["なえ", "なわ"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"苗", reading:"なえ", meaning:"seedling"),
            KanjiExample(word:"苗木", reading:"なえぎ", meaning:"sapling")]),
        Kanji(id:"湧", meanings:["gush", "well up", "spring"], onyomi:["ユウ"], kunyomi:["わ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"湧く", reading:"わく", meaning:"to well up/gush"),
            KanjiExample(word:"湧き水", reading:"わきみず", meaning:"spring water")]),
        Kanji(id:"殊", meanings:["exceptional", "particularly"], onyomi:["シュ"], kunyomi:["こと"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"特殊", reading:"とくしゅ", meaning:"special/peculiar"),
            KanjiExample(word:"殊に", reading:"ことに", meaning:"especially")]),
        Kanji(id:"峰", meanings:["peak", "summit"], onyomi:["ホウ", "ブ"], kunyomi:["みね"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"峰", reading:"みね", meaning:"peak/summit"),
            KanjiExample(word:"山峰", reading:"さんぽう", meaning:"mountain peak")]),
        Kanji(id:"穂", meanings:["ear of grain", "spike"], onyomi:["スイ"], kunyomi:["ほ"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"稲穂", reading:"いなほ", meaning:"ear of rice"),
            KanjiExample(word:"穂先", reading:"ほさき", meaning:"tip of spike")]),
        Kanji(id:"喪", meanings:["mourning", "lose"], onyomi:["ソウ"], kunyomi:["も"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"喪服", reading:"もふく", meaning:"mourning clothes"),
            KanjiExample(word:"喪失", reading:"そうしつ", meaning:"loss/bereavement")]),
        Kanji(id:"蜂", meanings:["bee", "wasp"], onyomi:["ホウ"], kunyomi:["はち"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"蜂", reading:"はち", meaning:"bee"),
            KanjiExample(word:"蜂蜜", reading:"はちみつ", meaning:"honey")]),
        Kanji(id:"梨", meanings:["pear"], onyomi:["リ"], kunyomi:["なし"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"梨", reading:"なし", meaning:"Japanese pear"),
            KanjiExample(word:"洋梨", reading:"ようなし", meaning:"Western pear")]),
        Kanji(id:"牲", meanings:["sacrifice", "victim"], onyomi:["セイ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"犠牲", reading:"ぎせい", meaning:"sacrifice"),
            KanjiExample(word:"牲畜", reading:"せいちく", meaning:"livestock")]),
        Kanji(id:"渦", meanings:["whirlpool", "vortex", "eddy"], onyomi:["カ"], kunyomi:["うず"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"渦", reading:"うず", meaning:"whirlpool"),
            KanjiExample(word:"渦巻き", reading:"うずまき", meaning:"spiral/swirl")]),
        Kanji(id:"鍵", meanings:["key", "lock"], onyomi:["ケン"], kunyomi:["かぎ"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"鍵", reading:"かぎ", meaning:"key"),
            KanjiExample(word:"鍵盤", reading:"けんばん", meaning:"keyboard")]),
        Kanji(id:"弧", meanings:["arc", "bow"], onyomi:["コ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"弧", reading:"こ", meaning:"arc"),
            KanjiExample(word:"弧度", reading:"こど", meaning:"radian")]),
        Kanji(id:"幽", meanings:["faint", "dim", "dark", "secluded"], onyomi:["ユウ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"幽霊", reading:"ゆうれい", meaning:"ghost"),
            KanjiExample(word:"幽閉", reading:"ゆうへい", meaning:"confinement")]),
        Kanji(id:"帥", meanings:["commander", "general"], onyomi:["スイ"], kunyomi:[], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"元帥", reading:"げんすい", meaning:"field marshal"),
            KanjiExample(word:"統帥", reading:"とうすい", meaning:"supreme command")]),
        Kanji(id:"倹", meanings:["thrifty", "frugal"], onyomi:["ケン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"倹約", reading:"けんやく", meaning:"frugality/thrift"),
            KanjiExample(word:"倹しい", reading:"つましい", meaning:"frugal")]),
        Kanji(id:"謹", meanings:["respect", "be careful", "modest"], onyomi:["キン"], kunyomi:["つつし"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"謹慎", reading:"きんしん", meaning:"confinement/reflection"),
            KanjiExample(word:"謹んで", reading:"つつしんで", meaning:"respectfully")]),
        Kanji(id:"粗", meanings:["coarse", "rough", "crude"], onyomi:["ソ"], kunyomi:["あら"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"粗末", reading:"そまつ", meaning:"crude/shabby"),
            KanjiExample(word:"粗い", reading:"あらい", meaning:"coarse/rough")]),
        Kanji(id:"蛍", meanings:["firefly", "fluorescent"], onyomi:["ケイ"], kunyomi:["ほたる"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"蛍", reading:"ほたる", meaning:"firefly"),
            KanjiExample(word:"蛍光", reading:"けいこう", meaning:"fluorescence")]),
        Kanji(id:"柿", meanings:["persimmon"], onyomi:["シ"], kunyomi:["かき"], level:.N2, strokeCount:9, examples:[
            KanjiExample(word:"柿", reading:"かき", meaning:"persimmon"),
            KanjiExample(word:"干し柿", reading:"ほしがき", meaning:"dried persimmon")]),
        Kanji(id:"栗", meanings:["chestnut"], onyomi:["リツ", "リ"], kunyomi:["くり"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"栗", reading:"くり", meaning:"chestnut"),
            KanjiExample(word:"栗色", reading:"くりいろ", meaning:"chestnut color/maroon")]),
        Kanji(id:"麺", meanings:["noodles", "wheat flour"], onyomi:["メン"], kunyomi:[], level:.N2, strokeCount:16, examples:[
            KanjiExample(word:"麺", reading:"めん", meaning:"noodles"),
            KanjiExample(word:"ラーメン", reading:"らーめん", meaning:"ramen")]),
        Kanji(id:"邦", meanings:["country", "home country", "Japan"], onyomi:["ホウ"], kunyomi:["くに"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"邦楽", reading:"ほうがく", meaning:"Japanese music"),
            KanjiExample(word:"邦人", reading:"ほうじん", meaning:"Japanese person")]),
        Kanji(id:"戯", meanings:["play", "jest", "drama"], onyomi:["ギ", "ゲ"], kunyomi:["たわむ"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"戯れ", reading:"たわむれ", meaning:"play/jest"),
            KanjiExample(word:"戯曲", reading:"ぎきょく", meaning:"play/drama")]),
        Kanji(id:"痩", meanings:["thin", "lean", "lose weight"], onyomi:["ソウ"], kunyomi:["や"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"痩せる", reading:"やせる", meaning:"to lose weight/get thin"),
            KanjiExample(word:"痩身", reading:"そうしん", meaning:"slim figure")]),
        Kanji(id:"藻", meanings:["seaweed", "algae", "aquatic plant"], onyomi:["ソウ"], kunyomi:["も"], level:.N2, strokeCount:19, examples:[
            KanjiExample(word:"海藻", reading:"かいそう", meaning:"seaweed"),
            KanjiExample(word:"藻", reading:"も", meaning:"seaweed/algae")]),
        Kanji(id:"贈", meanings:["give as gift", "present", "donate"], onyomi:["ゾウ"], kunyomi:["おく"], level:.N2, strokeCount:18, examples:[
            KanjiExample(word:"贈る", reading:"おくる", meaning:"to give as gift"),
            KanjiExample(word:"贈り物", reading:"おくりもの", meaning:"gift/present")]),
        Kanji(id:"遭", meanings:["encounter", "meet unexpectedly", "suffer"], onyomi:["ソウ"], kunyomi:["あ"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"遭う", reading:"あう", meaning:"to encounter/suffer"),
            KanjiExample(word:"遭遇", reading:"そうぐう", meaning:"encounter/meeting")]),
        Kanji(id:"紋", meanings:["crest", "pattern", "emblem", "figure"], onyomi:["モン"], kunyomi:[], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"紋", reading:"もん", meaning:"crest/pattern"),
            KanjiExample(word:"家紋", reading:"かもん", meaning:"family crest")]),
        Kanji(id:"紐", meanings:["string", "cord", "tie", "rope"], onyomi:["チュウ"], kunyomi:["ひも"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"紐", reading:"ひも", meaning:"string/cord"),
            KanjiExample(word:"靴紐", reading:"くつひも", meaning:"shoelace")]),
        Kanji(id:"墨", meanings:["ink", "sumi ink", "black"], onyomi:["ボク"], kunyomi:["すみ"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"墨", reading:"すみ", meaning:"ink/sumi"),
            KanjiExample(word:"水墨画", reading:"すいぼくが", meaning:"ink wash painting")]),
        Kanji(id:"濯", meanings:["wash", "rinse", "launder"], onyomi:["タク"], kunyomi:["すす"], level:.N2, strokeCount:17, examples:[
            KanjiExample(word:"洗濯", reading:"せんたく", meaning:"laundry/washing"),
            KanjiExample(word:"濯ぐ", reading:"すすぐ", meaning:"to rinse")]),
        Kanji(id:"殻", meanings:["shell", "husk", "hull", "casing"], onyomi:["カク"], kunyomi:["から"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"殻", reading:"から", meaning:"shell/husk"),
            KanjiExample(word:"卵の殻", reading:"たまごのから", meaning:"eggshell")]),
        Kanji(id:"塞", meanings:["blockade", "fortress", "plug", "stop up"], onyomi:["ソク", "サイ"], kunyomi:["ふさ", "とりで"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"要塞", reading:"ようさい", meaning:"fortress"),
            KanjiExample(word:"塞ぐ", reading:"ふさぐ", meaning:"to block/plug")]),
        Kanji(id:"隙", meanings:["gap", "chink", "crack", "opportunity"], onyomi:["ゲキ"], kunyomi:["すき", "すきま"], level:.N2, strokeCount:13, examples:[
            KanjiExample(word:"隙間", reading:"すきま", meaning:"gap/crack"),
            KanjiExample(word:"隙", reading:"すき", meaning:"gap/opportunity")]),
        Kanji(id:"紡", meanings:["spin thread", "make yarn", "spinning"], onyomi:["ボウ"], kunyomi:["つむ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"紡ぐ", reading:"つむぐ", meaning:"to spin (thread)"),
            KanjiExample(word:"紡績", reading:"ぼうせき", meaning:"spinning/textile")]),
    ]

    // ─────────────────────────────────────────
    // MARK: N1 (306 kanji)
    // ─────────────────────────────────────────
    static let n1: [Kanji] = [
        Kanji(id:"懸", meanings:["suspend","hang","concern"], onyomi:["ケン","ケ"], kunyomi:["か"], level:.N1, strokeCount:20, examples:[
            KanjiExample(word:"懸念", reading:"けねん", meaning:"concern / worry"),
            KanjiExample(word:"懸命", reading:"けんめい", meaning:"with all one's might")]),
        Kanji(id:"慮", meanings:["consider","deliberate"], onyomi:["リョ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"考慮", reading:"こうりょ", meaning:"consideration"),
            KanjiExample(word:"配慮", reading:"はいりょ", meaning:"consideration / care")]),
        Kanji(id:"縦", meanings:["vertical","length"], onyomi:["ジュウ"], kunyomi:["たて"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"縦", reading:"たて", meaning:"vertical"),
            KanjiExample(word:"操縦", reading:"そうじゅう", meaning:"operation / piloting")]),
        Kanji(id:"奇", meanings:["strange","wondrous"], onyomi:["キ"], kunyomi:["く"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"奇妙", reading:"きみょう", meaning:"strange"),
            KanjiExample(word:"奇跡", reading:"きせき", meaning:"miracle")]),
        Kanji(id:"粛", meanings:["solemn","majestic","strict"], onyomi:["シュク"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"厳粛", reading:"げんしゅく", meaning:"solemn"),
            KanjiExample(word:"粛清", reading:"しゅくせい", meaning:"purge")]),
        Kanji(id:"顕", meanings:["appear","manifest","obvious"], onyomi:["ケン"], kunyomi:["あらわ"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"顕著", reading:"けんちょ", meaning:"remarkable"),
            KanjiExample(word:"顕在", reading:"けんざい", meaning:"manifest / actual")]),
        Kanji(id:"斥", meanings:["reject","expel"], onyomi:["セキ"], kunyomi:["しりぞ"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"排斥", reading:"はいせき", meaning:"rejection / exclusion"),
            KanjiExample(word:"斥候", reading:"せっこう", meaning:"scout / reconnaissance")]),
        Kanji(id:"赴", meanings:["proceed to","go"], onyomi:["フ"], kunyomi:["おもむ"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"赴任", reading:"ふにん", meaning:"taking up a post"),
            KanjiExample(word:"赴く", reading:"おもむく", meaning:"to go / to proceed")]),
        Kanji(id:"憤", meanings:["indignation","resent"], onyomi:["フン"], kunyomi:["いきどお"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"憤慨", reading:"ふんがい", meaning:"indignation"),
            KanjiExample(word:"憤る", reading:"いきどおる", meaning:"to be indignant")]),
        Kanji(id:"謙", meanings:["humble","modest"], onyomi:["ケン"], kunyomi:[], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"謙虚", reading:"けんきょ", meaning:"humble"),
            KanjiExample(word:"謙遜", reading:"けんそん", meaning:"modesty")]),
        Kanji(id:"滑", meanings:["slide","slip","smooth"], onyomi:["カツ"], kunyomi:["すべ","なめ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"滑らか", reading:"なめらか", meaning:"smooth"),
            KanjiExample(word:"円滑", reading:"えんかつ", meaning:"smooth / harmonious")]),
        Kanji(id:"拙", meanings:["unskillful","clumsy"], onyomi:["セツ"], kunyomi:["つたな"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"拙い", reading:"つたない", meaning:"poor / unskillful"),
            KanjiExample(word:"稚拙", reading:"ちせつ", meaning:"childish / clumsy")]),
        Kanji(id:"緩", meanings:["loose","slow","lenient"], onyomi:["カン"], kunyomi:["ゆる"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"緩やか", reading:"ゆるやか", meaning:"gentle / slow"),
            KanjiExample(word:"緩和", reading:"かんわ", meaning:"relaxation / easing")]),
        Kanji(id:"妨", meanings:["disturb","obstruct"], onyomi:["ボウ"], kunyomi:["さまた"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"妨げる", reading:"さまたげる", meaning:"to obstruct"),
            KanjiExample(word:"妨害", reading:"ぼうがい", meaning:"obstruction / interference")]),
        Kanji(id:"鑑", meanings:["mirror","appreciate"], onyomi:["カン"], kunyomi:["かがみ"], level:.N1, strokeCount:23, examples:[
            KanjiExample(word:"鑑賞", reading:"かんしょう", meaning:"appreciation"),
            KanjiExample(word:"図鑑", reading:"ずかん", meaning:"illustrated reference book")]),
        Kanji(id:"賞", meanings:["prize","appreciate"], onyomi:["ショウ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"鑑賞", reading:"かんしょう", meaning:"appreciation"),
            KanjiExample(word:"受賞", reading:"じゅしょう", meaning:"winning a prize")]),
        Kanji(id:"逸", meanings:["deviate","excel"], onyomi:["イツ"], kunyomi:["そ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"逸脱", reading:"いつだつ", meaning:"deviation"),
            KanjiExample(word:"逸話", reading:"いつわ", meaning:"anecdote")]),
        Kanji(id:"凝", meanings:["congeal","devote"], onyomi:["ギョウ"], kunyomi:["こ"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"凝る", reading:"こる", meaning:"to be absorbed in"),
            KanjiExample(word:"凝縮", reading:"ぎょうしゅく", meaning:"condensation")]),
        Kanji(id:"縮", meanings:["shrink","reduce"], onyomi:["シュク"], kunyomi:["ちぢ"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"凝縮", reading:"ぎょうしゅく", meaning:"condensation"),
            KanjiExample(word:"短縮", reading:"たんしゅく", meaning:"shortening")]),
        Kanji(id:"膨", meanings:["swell","expand"], onyomi:["ボウ"], kunyomi:["ふく"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"膨らむ", reading:"ふくらむ", meaning:"to swell"),
            KanjiExample(word:"膨大", reading:"ぼうだい", meaning:"enormous")]),
        Kanji(id:"脹", meanings:["swell"], onyomi:["チョウ"], kunyomi:["は"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"膨脹", reading:"ぼうちょう", meaning:"expansion"),
            KanjiExample(word:"脹れる", reading:"はれる", meaning:"to swell")]),
        Kanji(id:"沸", meanings:["boil"], onyomi:["フツ"], kunyomi:["わ"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"沸く", reading:"わく", meaning:"to boil"),
            KanjiExample(word:"沸騰", reading:"ふっとう", meaning:"boiling")]),
        Kanji(id:"騰", meanings:["leap","rise"], onyomi:["トウ"], kunyomi:[], level:.N1, strokeCount:20, examples:[
            KanjiExample(word:"沸騰", reading:"ふっとう", meaning:"boiling"),
            KanjiExample(word:"高騰", reading:"こうとう", meaning:"sharp rise in price")]),
        Kanji(id:"侵", meanings:["invade"], onyomi:["シン"], kunyomi:["おか"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"侵害", reading:"しんがい", meaning:"infringement"),
            KanjiExample(word:"侵略", reading:"しんりゃく", meaning:"invasion")]),
        Kanji(id:"略", meanings:["abbreviate","invade"], onyomi:["リャク"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"侵略", reading:"しんりゃく", meaning:"invasion"),
            KanjiExample(word:"省略", reading:"しょうりゃく", meaning:"omission")]),
        Kanji(id:"奪", meanings:["seize","rob"], onyomi:["ダツ"], kunyomi:["うば"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"奪う", reading:"うばう", meaning:"to seize"),
            KanjiExample(word:"剥奪", reading:"はくだつ", meaning:"deprivation")]),
        Kanji(id:"剥", meanings:["peel"], onyomi:["ハク"], kunyomi:["は"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"剥奪", reading:"はくだつ", meaning:"deprivation"),
            KanjiExample(word:"剥がす", reading:"はがす", meaning:"to peel off")]),
        Kanji(id:"濫", meanings:["overflow","excessive"], onyomi:["ラン"], kunyomi:[], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"乱用", reading:"らんよう", meaning:"abuse"),
            KanjiExample(word:"濫用", reading:"らんよう", meaning:"overuse")]),
        Kanji(id:"乱", meanings:["disorder"], onyomi:["ラン"], kunyomi:["みだ"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"混乱", reading:"こんらん", meaning:"confusion"),
            KanjiExample(word:"乱れる", reading:"みだれる", meaning:"to be disordered")]),
        Kanji(id:"混", meanings:["mix","confuse"], onyomi:["コン"], kunyomi:["ま"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"混乱", reading:"こんらん", meaning:"confusion"),
            KanjiExample(word:"混合", reading:"こんごう", meaning:"mixture")]),
        Kanji(id:"雑", meanings:["miscellaneous"], onyomi:["ザツ","ゾウ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"雑誌", reading:"ざっし", meaning:"magazine"),
            KanjiExample(word:"複雑", reading:"ふくざつ", meaning:"complex")]),
        Kanji(id:"煩", meanings:["vexing","worried"], onyomi:["ハン","ボン"], kunyomi:["わずら"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"煩わしい", reading:"わずらわしい", meaning:"troublesome"),
            KanjiExample(word:"煩悩", reading:"ぼんのう", meaning:"earthly desires")]),
        Kanji(id:"悩", meanings:["worry","trouble"], onyomi:["ノウ"], kunyomi:["なや"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"悩む", reading:"なやむ", meaning:"to worry"),
            KanjiExample(word:"苦悩", reading:"くのう", meaning:"anguish")]),
        Kanji(id:"憂", meanings:["melancholy","worry"], onyomi:["ユウ"], kunyomi:["うれ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"憂鬱", reading:"ゆううつ", meaning:"depression"),
            KanjiExample(word:"憂える", reading:"うれえる", meaning:"to worry")]),
        Kanji(id:"鬱", meanings:["gloom","depression"], onyomi:["ウツ"], kunyomi:[], level:.N1, strokeCount:29, examples:[
            KanjiExample(word:"憂鬱", reading:"ゆううつ", meaning:"depression"),
            KanjiExample(word:"鬱病", reading:"うつびょう", meaning:"depression (illness)")]),
        Kanji(id:"嫉", meanings:["jealousy"], onyomi:["シツ"], kunyomi:["ねた"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"嫉妬", reading:"しっと", meaning:"jealousy"),
            KanjiExample(word:"嫉む", reading:"ねたむ", meaning:"to be jealous of")]),
        Kanji(id:"妬", meanings:["jealous"], onyomi:["ト"], kunyomi:["ねた"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"嫉妬", reading:"しっと", meaning:"jealousy"),
            KanjiExample(word:"妬む", reading:"ねたむ", meaning:"to envy")]),
        Kanji(id:"羨", meanings:["envy"], onyomi:["セン"], kunyomi:["うらや"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"羨ましい", reading:"うらやましい", meaning:"envious"),
            KanjiExample(word:"羨む", reading:"うらやむ", meaning:"to envy")]),
        Kanji(id:"慕", meanings:["yearn","adore"], onyomi:["ボ"], kunyomi:["した"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"慕う", reading:"したう", meaning:"to adore"),
            KanjiExample(word:"敬慕", reading:"けいぼ", meaning:"reverence and admiration")]),
        Kanji(id:"敬", meanings:["respect"], onyomi:["ケイ"], kunyomi:["うやま"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"敬意", reading:"けいい", meaning:"respect"),
            KanjiExample(word:"尊敬", reading:"そんけい", meaning:"respect")]),
        Kanji(id:"尊", meanings:["revere","noble"], onyomi:["ソン"], kunyomi:["たっと","とうと"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"尊重", reading:"そんちょう", meaning:"respect"),
            KanjiExample(word:"尊厳", reading:"そんげん", meaning:"dignity")]),
        Kanji(id:"威", meanings:["power","authority"], onyomi:["イ"], kunyomi:[], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"威力", reading:"いりょく", meaning:"power"),
            KanjiExample(word:"権威", reading:"けんい", meaning:"authority")]),
        Kanji(id:"権", meanings:["right","authority"], onyomi:["ケン","ゴン"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"権利", reading:"けんり", meaning:"right"),
            KanjiExample(word:"権威", reading:"けんい", meaning:"authority")]),
        Kanji(id:"義", meanings:["justice","meaning"], onyomi:["ギ"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"正義", reading:"せいぎ", meaning:"justice"),
            KanjiExample(word:"義務", reading:"ぎむ", meaning:"obligation")]),
        Kanji(id:"徳", meanings:["virtue","morality"], onyomi:["トク"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"道徳", reading:"どうとく", meaning:"morality"),
            KanjiExample(word:"徳", reading:"とく", meaning:"virtue")]),
        Kanji(id:"廉", meanings:["cheap","honest"], onyomi:["レン"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"廉価", reading:"れんか", meaning:"low price"),
            KanjiExample(word:"廉潔", reading:"れんけつ", meaning:"integrity")]),
        Kanji(id:"潔", meanings:["pure","clean"], onyomi:["ケツ"], kunyomi:["いさぎよ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"清潔", reading:"せいけつ", meaning:"clean"),
            KanjiExample(word:"潔白", reading:"けっぱく", meaning:"innocence")]),
        Kanji(id:"誠", meanings:["sincerity"], onyomi:["セイ"], kunyomi:["まこと"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"誠実", reading:"せいじつ", meaning:"sincere"),
            KanjiExample(word:"誠意", reading:"せいい", meaning:"sincerity")]),
        Kanji(id:"忠", meanings:["loyalty"], onyomi:["チュウ"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"忠実", reading:"ちゅうじつ", meaning:"faithful"),
            KanjiExample(word:"忠誠", reading:"ちゅうせい", meaning:"loyalty")]),
        Kanji(id:"孝", meanings:["filial piety"], onyomi:["コウ"], kunyomi:[], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"孝行", reading:"こうこう", meaning:"filial piety"),
            KanjiExample(word:"親孝行", reading:"おやこうこう", meaning:"being devoted to one's parents")]),
        Kanji(id:"勇", meanings:["brave","courageous"], onyomi:["ユウ"], kunyomi:["いさ"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"勇気", reading:"ゆうき", meaning:"courage"),
            KanjiExample(word:"勇者", reading:"ゆうしゃ", meaning:"hero")]),
        Kanji(id:"猛", meanings:["fierce","ferocious"], onyomi:["モウ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"猛烈", reading:"もうれつ", meaning:"fierce"),
            KanjiExample(word:"猛獣", reading:"もうじゅう", meaning:"ferocious animal")]),
        Kanji(id:"烈", meanings:["fierce","intense"], onyomi:["レツ"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"猛烈", reading:"もうれつ", meaning:"fierce"),
            KanjiExample(word:"激烈", reading:"げきれつ", meaning:"intense")]),
        Kanji(id:"激", meanings:["violent","intense"], onyomi:["ゲキ"], kunyomi:["はげ"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"激しい", reading:"はげしい", meaning:"intense"),
            KanjiExample(word:"感激", reading:"かんげき", meaning:"deeply moved")]),
        Kanji(id:"迅", meanings:["swift"], onyomi:["ジン"], kunyomi:[], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"迅速", reading:"じんそく", meaning:"swift"),
            KanjiExample(word:"迅雷", reading:"じんらい", meaning:"thunderbolt")]),
        Kanji(id:"敏", meanings:["agile","quick"], onyomi:["ビン"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"敏速", reading:"びんそく", meaning:"agility"),
            KanjiExample(word:"過敏", reading:"かびん", meaning:"hypersensitive")]),
        Kanji(id:"巧", meanings:["skillful"], onyomi:["コウ"], kunyomi:["たく"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"巧みな", reading:"たくみな", meaning:"skillful"),
            KanjiExample(word:"精巧", reading:"せいこう", meaning:"elaborate")]),
        Kanji(id:"稚", meanings:["young","immature"], onyomi:["チ"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"幼稚", reading:"ようち", meaning:"childish"),
            KanjiExample(word:"稚拙", reading:"ちせつ", meaning:"clumsy")]),
        Kanji(id:"幼", meanings:["young","infant"], onyomi:["ヨウ"], kunyomi:["おさな"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"幼い", reading:"おさない", meaning:"young"),
            KanjiExample(word:"幼稚園", reading:"ようちえん", meaning:"kindergarten")]),
        Kanji(id:"賢", meanings:["wise","clever"], onyomi:["ケン"], kunyomi:["かしこ"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"賢い", reading:"かしこい", meaning:"wise"),
            KanjiExample(word:"賢者", reading:"けんじゃ", meaning:"wise person")]),
        Kanji(id:"愚", meanings:["foolish"], onyomi:["グ"], kunyomi:["おろか"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"愚か", reading:"おろか", meaning:"foolish"),
            KanjiExample(word:"愚痴", reading:"ぐち", meaning:"complaint / grumbling")]),
        Kanji(id:"哀", meanings:["sorrow","pity"], onyomi:["アイ"], kunyomi:["あわ"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"哀れ", reading:"あわれ", meaning:"pathos / pity"),
            KanjiExample(word:"悲哀", reading:"ひあい", meaning:"sorrow")]),
        Kanji(id:"嘆", meanings:["sigh","lament"], onyomi:["タン"], kunyomi:["なげ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"嘆く", reading:"なげく", meaning:"to lament"),
            KanjiExample(word:"感嘆", reading:"かんたん", meaning:"admiration")]),
        Kanji(id:"憧", meanings:["yearn","longing"], onyomi:["ショウ","ドウ"], kunyomi:["あこが"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"憧れる", reading:"あこがれる", meaning:"to yearn for"),
            KanjiExample(word:"憧憬", reading:"どうけい", meaning:"longing / aspiration")]),
        Kanji(id:"憩", meanings:["rest","repose"], onyomi:["ケイ"], kunyomi:["いこ"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"憩う", reading:"いこう", meaning:"to rest"),
            KanjiExample(word:"休憩", reading:"きゅうけい", meaning:"break / rest")]),
        Kanji(id:"享", meanings:["receive","enjoy"], onyomi:["キョウ"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"享受", reading:"きょうじゅ", meaning:"enjoyment"),
            KanjiExample(word:"享楽", reading:"きょうらく", meaning:"pleasure")]),
        Kanji(id:"棄", meanings:["abandon"], onyomi:["キ"], kunyomi:["す"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"放棄", reading:"ほうき", meaning:"abandonment"),
            KanjiExample(word:"廃棄", reading:"はいき", meaning:"disposal")]),
        Kanji(id:"廃", meanings:["abolish","废"], onyomi:["ハイ"], kunyomi:["すた"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"廃棄", reading:"はいき", meaning:"disposal"),
            KanjiExample(word:"廃止", reading:"はいし", meaning:"abolition")]),
        Kanji(id:"滅", meanings:["destroy","perish"], onyomi:["メツ"], kunyomi:["ほろ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"絶滅", reading:"ぜつめつ", meaning:"extinction"),
            KanjiExample(word:"滅ぶ", reading:"ほろぶ", meaning:"to perish")]),
        Kanji(id:"絶", meanings:["cut off","extinct"], onyomi:["ゼツ"], kunyomi:["た"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"絶滅", reading:"ぜつめつ", meaning:"extinction"),
            KanjiExample(word:"絶対", reading:"ぜったい", meaning:"absolute")]),
        Kanji(id:"継", meanings:["succeed","continue"], onyomi:["ケイ"], kunyomi:["つ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"継続", reading:"けいぞく", meaning:"continuation"),
            KanjiExample(word:"後継", reading:"こうけい", meaning:"successor")]),
        Kanji(id:"承", meanings:["receive","consent"], onyomi:["ショウ"], kunyomi:["うけたまわ"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"承認", reading:"しょうにん", meaning:"approval"),
            KanjiExample(word:"承諾", reading:"しょうだく", meaning:"consent")]),
        Kanji(id:"諾", meanings:["consent"], onyomi:["ダク"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"承諾", reading:"しょうだく", meaning:"consent"),
            KanjiExample(word:"快諾", reading:"かいだく", meaning:"ready consent")]),
        Kanji(id:"拒", meanings:["refuse","resist"], onyomi:["キョ"], kunyomi:["こば"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"拒否", reading:"きょひ", meaning:"refusal"),
            KanjiExample(word:"拒む", reading:"こばむ", meaning:"to refuse")]),
        Kanji(id:"否", meanings:["no","deny"], onyomi:["ヒ"], kunyomi:["いな"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"拒否", reading:"きょひ", meaning:"refusal"),
            KanjiExample(word:"否定", reading:"ひてい", meaning:"negation")]),
        Kanji(id:"譲", meanings:["yield","concede"], onyomi:["ジョウ"], kunyomi:["ゆず"], level:.N1, strokeCount:20, examples:[
            KanjiExample(word:"譲る", reading:"ゆずる", meaning:"to concede"),
            KanjiExample(word:"謙譲", reading:"けんじょう", meaning:"modesty")]),
        Kanji(id:"遵", meanings:["follow","obey"], onyomi:["ジュン"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"遵守", reading:"じゅんしゅ", meaning:"compliance"),
            KanjiExample(word:"遵法", reading:"じゅんぽう", meaning:"law-abiding")]),
        Kanji(id:"循", meanings:["follow","go around"], onyomi:["ジュン"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"循環", reading:"じゅんかん", meaning:"circulation"),
            KanjiExample(word:"循序", reading:"じゅんじょ", meaning:"order")]),
        Kanji(id:"環", meanings:["ring","circle"], onyomi:["カン"], kunyomi:[], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"循環", reading:"じゅんかん", meaning:"circulation"),
            KanjiExample(word:"環境", reading:"かんきょう", meaning:"environment")]),
        Kanji(id:"境", meanings:["boundary","situation"], onyomi:["キョウ","ケイ"], kunyomi:["さかい"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"環境", reading:"かんきょう", meaning:"environment"),
            KanjiExample(word:"境界", reading:"きょうかい", meaning:"boundary")]),
        Kanji(id:"概", meanings:["outline","approximate"], onyomi:["ガイ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"概念", reading:"がいねん", meaning:"concept"),
            KanjiExample(word:"概要", reading:"がいよう", meaning:"summary")]),
        Kanji(id:"抽", meanings:["extract","draw"], onyomi:["チュウ"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"抽象", reading:"ちゅうしょう", meaning:"abstract"),
            KanjiExample(word:"抽選", reading:"ちゅうせん", meaning:"lottery")]),
        Kanji(id:"象", meanings:["elephant","phenomenon"], onyomi:["ショウ","ゾウ"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"抽象", reading:"ちゅうしょう", meaning:"abstract"),
            KanjiExample(word:"現象", reading:"げんしょう", meaning:"phenomenon")]),
        Kanji(id:"模", meanings:["model","imitate"], onyomi:["モ","ボ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"模倣", reading:"もほう", meaning:"imitation"),
            KanjiExample(word:"規模", reading:"きぼ", meaning:"scale")]),
        Kanji(id:"倣", meanings:["imitate"], onyomi:["ホウ"], kunyomi:["なら"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"模倣", reading:"もほう", meaning:"imitation"),
            KanjiExample(word:"倣う", reading:"ならう", meaning:"to imitate")]),
        Kanji(id:"擬", meanings:["imitate","pseudo"], onyomi:["ギ"], kunyomi:[], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"擬似", reading:"ぎじ", meaning:"pseudo / quasi"),
            KanjiExample(word:"擬音", reading:"ぎおん", meaning:"onomatopoeia")]),
        Kanji(id:"隠", meanings:["hide","conceal"], onyomi:["イン"], kunyomi:["かく"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"隠す", reading:"かくす", meaning:"to hide"),
            KanjiExample(word:"隠れる", reading:"かくれる", meaning:"to hide (oneself)")]),
        Kanji(id:"秘", meanings:["secret"], onyomi:["ヒ"], kunyomi:["ひ"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"秘密", reading:"ひみつ", meaning:"secret"),
            KanjiExample(word:"神秘", reading:"しんぴ", meaning:"mystery")]),
        Kanji(id:"露", meanings:["expose","dew"], onyomi:["ロ","ロウ"], kunyomi:["つゆ"], level:.N1, strokeCount:21, examples:[
            KanjiExample(word:"暴露", reading:"ばくろ", meaning:"exposure / revelation"),
            KanjiExample(word:"露出", reading:"ろしゅつ", meaning:"exposure")]),
        Kanji(id:"暴", meanings:["violent","expose"], onyomi:["ボウ","バク"], kunyomi:["あば"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"暴力", reading:"ぼうりょく", meaning:"violence"),
            KanjiExample(word:"暴露", reading:"ばくろ", meaning:"exposure")]),
        Kanji(id:"悔", meanings:["regret"], onyomi:["カイ"], kunyomi:["く","くや"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"後悔", reading:"こうかい", meaning:"regret"),
            KanjiExample(word:"悔やむ", reading:"くやむ", meaning:"to regret")]),
        Kanji(id:"羞", meanings:["shame"], onyomi:["シュウ"], kunyomi:["は"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"羞恥", reading:"しゅうち", meaning:"shame"),
            KanjiExample(word:"恥", reading:"はじ", meaning:"shame")]),
        Kanji(id:"恥", meanings:["shame","disgrace"], onyomi:["チ"], kunyomi:["は"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"恥ずかしい", reading:"はずかしい", meaning:"embarrassing"),
            KanjiExample(word:"恥", reading:"はじ", meaning:"shame")]),
        Kanji(id:"辱", meanings:["disgrace"], onyomi:["ジョク"], kunyomi:["はずかし"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"屈辱", reading:"くつじょく", meaning:"humiliation"),
            KanjiExample(word:"辱める", reading:"はずかしめる", meaning:"to humiliate")]),
        Kanji(id:"崇", meanings:["revere","high"], onyomi:["スウ"], kunyomi:["あが"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"崇拝", reading:"すうはい", meaning:"worship"),
            KanjiExample(word:"崇高", reading:"すうこう", meaning:"sublime")]),
        Kanji(id:"拝", meanings:["worship","bow"], onyomi:["ハイ"], kunyomi:["おが"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"崇拝", reading:"すうはい", meaning:"worship"),
            KanjiExample(word:"拝む", reading:"おがむ", meaning:"to worship / pray")]),
        Kanji(id:"祈", meanings:["pray"], onyomi:["キ"], kunyomi:["いの"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"祈る", reading:"いのる", meaning:"to pray"),
            KanjiExample(word:"祈願", reading:"きがん", meaning:"prayer")]),
        Kanji(id:"冥", meanings:["dark","underworld"], onyomi:["メイ"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"冥福", reading:"めいふく", meaning:"happiness in the next world"),
            KanjiExample(word:"冥王星", reading:"めいおうせい", meaning:"Pluto")]),
        Kanji(id:"霊", meanings:["spirit","soul"], onyomi:["レイ","リョウ"], kunyomi:["たま"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"霊", reading:"たま", meaning:"spirit / soul"),
            KanjiExample(word:"幽霊", reading:"ゆうれい", meaning:"ghost")]),
        Kanji(id:"魂", meanings:["soul","spirit"], onyomi:["コン"], kunyomi:["たましい"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"魂", reading:"たましい", meaning:"soul"),
            KanjiExample(word:"霊魂", reading:"れいこん", meaning:"spirit / soul")]),
        Kanji(id:"彩", meanings:["color", "variety"], onyomi:["サイ"], kunyomi:["いろど"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"色彩", reading:"しきさい", meaning:"color/coloring"),
            KanjiExample(word:"彩る", reading:"いろどる", meaning:"to color")]),
        Kanji(id:"陰", meanings:["shadow", "negative"], onyomi:["イン"], kunyomi:["かげ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"陰", reading:"かげ", meaning:"shadow/negative"),
            KanjiExample(word:"陰気", reading:"いんき", meaning:"gloomy")]),
        Kanji(id:"宴", meanings:["banquet", "feast"], onyomi:["エン"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"宴会", reading:"えんかい", meaning:"banquet"),
            KanjiExample(word:"宴", reading:"うたげ", meaning:"feast")]),
        Kanji(id:"煙", meanings:["smoke"], onyomi:["エン"], kunyomi:["けむ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"煙草", reading:"たばこ", meaning:"tobacco"),
            KanjiExample(word:"煙", reading:"けむり", meaning:"smoke")]),
        Kanji(id:"援", meanings:["help", "support"], onyomi:["エン"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"支援", reading:"しえん", meaning:"support"),
            KanjiExample(word:"応援", reading:"おうえん", meaning:"cheering/support")]),
        Kanji(id:"奥", meanings:["interior", "deep"], onyomi:["オウ"], kunyomi:["おく"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"奥さん", reading:"おくさん", meaning:"wife (someone's)"),
            KanjiExample(word:"奥", reading:"おく", meaning:"interior/depth")]),
        Kanji(id:"架", meanings:["build", "span"], onyomi:["カ"], kunyomi:["か"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"架空", reading:"かくう", meaning:"fictional"),
            KanjiExample(word:"架ける", reading:"かける", meaning:"to build/span")]),
        Kanji(id:"郭", meanings:["enclosure", "outline"], onyomi:["カク"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"輪郭", reading:"りんかく", meaning:"outline"),
            KanjiExample(word:"城郭", reading:"じょうかく", meaning:"castle walls")]),
        Kanji(id:"括", meanings:["bundle", "include"], onyomi:["カツ"], kunyomi:["くく"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"括弧", reading:"かっこ", meaning:"parentheses"),
            KanjiExample(word:"包括", reading:"ほうかつ", meaning:"comprehensive")]),
        Kanji(id:"還", meanings:["return", "come back"], onyomi:["カン"], kunyomi:[], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"還元", reading:"かんげん", meaning:"reduction/return"),
            KanjiExample(word:"帰還", reading:"きかん", meaning:"return")]),
        Kanji(id:"款", meanings:["section", "goodwill"], onyomi:["カン"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"定款", reading:"ていかん", meaning:"articles of incorporation"),
            KanjiExample(word:"条款", reading:"じょうかん", meaning:"clause")]),
        Kanji(id:"岐", meanings:["branch", "fork"], onyomi:["キ"], kunyomi:[], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"分岐", reading:"ぶんき", meaning:"branch/fork"),
            KanjiExample(word:"岐路", reading:"きろ", meaning:"crossroads")]),
        Kanji(id:"欺", meanings:["deceive", "cheat"], onyomi:["ギ"], kunyomi:["あざむ"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"詐欺", reading:"さぎ", meaning:"fraud"),
            KanjiExample(word:"欺く", reading:"あざむく", meaning:"to deceive")]),
        Kanji(id:"虚", meanings:["empty", "false"], onyomi:["キョ", "コ"], kunyomi:["むな"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"虚偽", reading:"きょぎ", meaning:"falsehood"),
            KanjiExample(word:"虚無", reading:"きょむ", meaning:"nihilism")]),
        Kanji(id:"脅", meanings:["threaten", "coerce"], onyomi:["キョウ"], kunyomi:["おびや", "おど"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"脅す", reading:"おどす", meaning:"to threaten"),
            KanjiExample(word:"脅威", reading:"きょうい", meaning:"threat")]),
        Kanji(id:"禽", meanings:["bird", "fowl"], onyomi:["キン"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"禽獣", reading:"きんじゅう", meaning:"birds and beasts"),
            KanjiExample(word:"家禽", reading:"かきん", meaning:"poultry")]),
        Kanji(id:"傑", meanings:["outstanding", "hero"], onyomi:["ケツ"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"傑作", reading:"けっさく", meaning:"masterpiece"),
            KanjiExample(word:"豪傑", reading:"ごうけつ", meaning:"hero")]),
        Kanji(id:"弦", meanings:["bowstring", "string"], onyomi:["ゲン"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"弦楽", reading:"げんがく", meaning:"string music"),
            KanjiExample(word:"弦", reading:"つる", meaning:"string/bowstring")]),
        Kanji(id:"幻", meanings:["phantom", "illusion"], onyomi:["ゲン"], kunyomi:["まぼろし"], level:.N1, strokeCount:4, examples:[
            KanjiExample(word:"幻想", reading:"げんそう", meaning:"fantasy"),
            KanjiExample(word:"幻", reading:"まぼろし", meaning:"illusion")]),
        Kanji(id:"顧", meanings:["look back", "consider"], onyomi:["コ"], kunyomi:["かえり"], level:.N1, strokeCount:21, examples:[
            KanjiExample(word:"顧客", reading:"こきゃく", meaning:"customer"),
            KanjiExample(word:"回顧", reading:"かいこ", meaning:"retrospection")]),
        Kanji(id:"控", meanings:["hold back", "note"], onyomi:["コウ"], kunyomi:["ひか"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"控える", reading:"ひかえる", meaning:"to hold back"),
            KanjiExample(word:"控室", reading:"ひかえしつ", meaning:"waiting room")]),
        Kanji(id:"稿", meanings:["draft", "manuscript"], onyomi:["コウ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"原稿", reading:"げんこう", meaning:"manuscript"),
            KanjiExample(word:"稿", reading:"こう", meaning:"draft")]),
        Kanji(id:"酷", meanings:["cruel", "harsh"], onyomi:["コク"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"残酷", reading:"ざんこく", meaning:"cruel"),
            KanjiExample(word:"酷い", reading:"ひどい", meaning:"terrible/cruel")]),
        Kanji(id:"詐", meanings:["cheat", "deceive"], onyomi:["サ"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"詐欺", reading:"さぎ", meaning:"fraud"),
            KanjiExample(word:"詐称", reading:"さしょう", meaning:"false claim")]),
        Kanji(id:"宰", meanings:["govern", "control"], onyomi:["サイ"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"主宰", reading:"しゅさい", meaning:"chairmanship"),
            KanjiExample(word:"宰相", reading:"さいしょう", meaning:"prime minister")]),
        Kanji(id:"惨", meanings:["tragic", "miserable"], onyomi:["サン", "ザン"], kunyomi:["みじ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"惨事", reading:"さんじ", meaning:"disaster"),
            KanjiExample(word:"悲惨", reading:"ひさん", meaning:"tragic")]),
        Kanji(id:"斬", meanings:["cut down", "novel"], onyomi:["ザン"], kunyomi:["き"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"斬新", reading:"ざんしん", meaning:"novel/fresh"),
            KanjiExample(word:"斬る", reading:"きる", meaning:"to cut down")]),
        Kanji(id:"慈", meanings:["love", "mercy"], onyomi:["ジ"], kunyomi:["いつく"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"慈善", reading:"じぜん", meaning:"charity"),
            KanjiExample(word:"慈悲", reading:"じひ", meaning:"mercy")]),
        Kanji(id:"執", meanings:["hold", "carry out"], onyomi:["シツ", "シュウ"], kunyomi:["と"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"執行", reading:"しっこう", meaning:"execution"),
            KanjiExample(word:"執着", reading:"しゅうちゃく", meaning:"attachment")]),
        Kanji(id:"邪", meanings:["evil", "wicked"], onyomi:["ジャ"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"邪魔", reading:"じゃま", meaning:"hindrance"),
            KanjiExample(word:"邪悪", reading:"じゃあく", meaning:"wicked")]),
        Kanji(id:"寂", meanings:["lonely", "quiet"], onyomi:["ジャク", "セキ"], kunyomi:["さび", "さみ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"寂しい", reading:"さびしい", meaning:"lonely"),
            KanjiExample(word:"静寂", reading:"せいじゃく", meaning:"silence")]),
        Kanji(id:"剰", meanings:["surplus", "excess"], onyomi:["ジョウ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"過剰", reading:"かじょう", meaning:"excess"),
            KanjiExample(word:"余剰", reading:"よじょう", meaning:"surplus")]),
        Kanji(id:"浄", meanings:["clean", "pure"], onyomi:["ジョウ"], kunyomi:["きよ"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"浄化", reading:"じょうか", meaning:"purification"),
            KanjiExample(word:"清浄", reading:"せいじょう", meaning:"purity")]),
        Kanji(id:"醸", meanings:["brew", "bring about"], onyomi:["ジョウ"], kunyomi:["かも"], level:.N1, strokeCount:20, examples:[
            KanjiExample(word:"醸造", reading:"じょうぞう", meaning:"brewing"),
            KanjiExample(word:"醸し出す", reading:"かもしだす", meaning:"to bring about")]),
        Kanji(id:"浸", meanings:["soak", "infiltrate"], onyomi:["シン"], kunyomi:["ひた"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"浸透", reading:"しんとう", meaning:"permeation"),
            KanjiExample(word:"浸る", reading:"ひたる", meaning:"to soak")]),
        Kanji(id:"辛", meanings:["spicy", "hard"], onyomi:["シン"], kunyomi:["から", "つら"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"辛い", reading:"つらい", meaning:"hard/painful"),
            KanjiExample(word:"辛口", reading:"からくち", meaning:"spicy/dry")]),
        Kanji(id:"唇", meanings:["lip"], onyomi:["シン"], kunyomi:["くちびる"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"唇", reading:"くちびる", meaning:"lip"),
            KanjiExample(word:"唇読み", reading:"くちびるよみ", meaning:"lip reading")]),
        Kanji(id:"慎", meanings:["careful", "discreet"], onyomi:["シン"], kunyomi:["つつし"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"慎重", reading:"しんちょう", meaning:"careful"),
            KanjiExample(word:"慎む", reading:"つつしむ", meaning:"to be careful")]),
        Kanji(id:"酔", meanings:["drunk", "fascinated"], onyomi:["スイ"], kunyomi:["よ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"酔う", reading:"よう", meaning:"to get drunk"),
            KanjiExample(word:"泥酔", reading:"でいすい", meaning:"dead drunk")]),
        Kanji(id:"隅", meanings:["corner", "nook"], onyomi:["グウ"], kunyomi:["すみ"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"隅", reading:"すみ", meaning:"corner"),
            KanjiExample(word:"隅々", reading:"すみずみ", meaning:"every corner")]),
        Kanji(id:"誓", meanings:["vow", "swear"], onyomi:["セイ"], kunyomi:["ちか"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"誓う", reading:"ちかう", meaning:"to vow"),
            KanjiExample(word:"誓約", reading:"せいやく", meaning:"oath")]),
        Kanji(id:"繊", meanings:["fiber", "slender"], onyomi:["セン"], kunyomi:[], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"繊維", reading:"せんい", meaning:"fiber"),
            KanjiExample(word:"繊細", reading:"せんさい", meaning:"delicate")]),
        Kanji(id:"漸", meanings:["gradually", "at last"], onyomi:["ゼン"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"漸次", reading:"ぜんじ", meaning:"gradually"),
            KanjiExample(word:"漸進", reading:"ぜんしん", meaning:"gradual progress")]),
        Kanji(id:"礎", meanings:["cornerstone", "foundation"], onyomi:["ソ"], kunyomi:["いしずえ"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"基礎", reading:"きそ", meaning:"foundation"),
            KanjiExample(word:"礎石", reading:"そせき", meaning:"cornerstone")]),
        Kanji(id:"阻", meanings:["obstruct", "prevent"], onyomi:["ソ"], kunyomi:["はば"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"阻止", reading:"そし", meaning:"obstruction"),
            KanjiExample(word:"阻む", reading:"はばむ", meaning:"to obstruct")]),
        Kanji(id:"憎", meanings:["hate", "detest"], onyomi:["ゾウ"], kunyomi:["にく"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"憎む", reading:"にくむ", meaning:"to hate"),
            KanjiExample(word:"憎悪", reading:"ぞうお", meaning:"hatred")]),
        Kanji(id:"即", meanings:["immediately", "namely"], onyomi:["ソク"], kunyomi:[], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"即座に", reading:"そくざに", meaning:"immediately"),
            KanjiExample(word:"即興", reading:"そっきょう", meaning:"improvisation")]),
        Kanji(id:"卓", meanings:["table", "excel"], onyomi:["タク"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"卓球", reading:"たっきゅう", meaning:"table tennis"),
            KanjiExample(word:"卓越", reading:"たくえつ", meaning:"excellence")]),
        Kanji(id:"端", meanings:["edge", "tip"], onyomi:["タン"], kunyomi:["はし", "は", "はた"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"端", reading:"はし", meaning:"edge/tip"),
            KanjiExample(word:"先端", reading:"せんたん", meaning:"cutting edge")]),
        Kanji(id:"鍛", meanings:["forge", "temper"], onyomi:["タン"], kunyomi:["きた"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"鍛える", reading:"きたえる", meaning:"to forge/train"),
            KanjiExample(word:"鍛冶", reading:"かじ", meaning:"blacksmith")]),
        Kanji(id:"徴", meanings:["sign", "collect"], onyomi:["チョウ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"特徴", reading:"とくちょう", meaning:"feature"),
            KanjiExample(word:"徴収", reading:"ちょうしゅう", meaning:"collection")]),
        Kanji(id:"彫", meanings:["carve", "engrave"], onyomi:["チョウ"], kunyomi:["ほ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"彫刻", reading:"ちょうこく", meaning:"sculpture"),
            KanjiExample(word:"彫る", reading:"ほる", meaning:"to carve")]),
        Kanji(id:"沈", meanings:["sink", "suppress"], onyomi:["チン"], kunyomi:["しず"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"沈む", reading:"しずむ", meaning:"to sink"),
            KanjiExample(word:"沈黙", reading:"ちんもく", meaning:"silence")]),
        Kanji(id:"諦", meanings:["give up", "truth"], onyomi:["テイ"], kunyomi:["あきら"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"諦める", reading:"あきらめる", meaning:"to give up"),
            KanjiExample(word:"諦観", reading:"ていかん", meaning:"resignation")]),
        Kanji(id:"哲", meanings:["philosophy", "wisdom"], onyomi:["テツ"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"哲学", reading:"てつがく", meaning:"philosophy"),
            KanjiExample(word:"哲人", reading:"てつじん", meaning:"philosopher")]),
        Kanji(id:"貪", meanings:["greedy", "covet"], onyomi:["ドン", "タン"], kunyomi:["むさぼ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"貪欲", reading:"どんよく", meaning:"greed"),
            KanjiExample(word:"貪る", reading:"むさぼる", meaning:"to covet")]),
        Kanji(id:"謄", meanings:["copy", "transcribe"], onyomi:["トウ"], kunyomi:[], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"謄本", reading:"とうほん", meaning:"certified copy"),
            KanjiExample(word:"謄写", reading:"とうしゃ", meaning:"transcription")]),
        Kanji(id:"撲", meanings:["strike", "hit"], onyomi:["ボク"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"撲滅", reading:"ぼくめつ", meaning:"eradication"),
            KanjiExample(word:"相撲", reading:"すもう", meaning:"sumo wrestling")]),
        Kanji(id:"縛", meanings:["bind", "tie"], onyomi:["バク"], kunyomi:["しば"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"束縛", reading:"そくばく", meaning:"restraint"),
            KanjiExample(word:"縛る", reading:"しばる", meaning:"to bind")]),
        Kanji(id:"罰", meanings:["punish", "penalty"], onyomi:["バツ", "ハツ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"罰する", reading:"ばっする", meaning:"to punish"),
            KanjiExample(word:"罰金", reading:"ばっきん", meaning:"fine/penalty")]),
        Kanji(id:"繁", meanings:["flourish", "busy"], onyomi:["ハン"], kunyomi:[], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"繁栄", reading:"はんえい", meaning:"prosperity"),
            KanjiExample(word:"繁盛", reading:"はんじょう", meaning:"thriving")]),
        Kanji(id:"魅", meanings:["charm", "fascinate"], onyomi:["ミ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"魅力", reading:"みりょく", meaning:"charm/appeal"),
            KanjiExample(word:"魅了", reading:"みりょう", meaning:"fascination")]),
        Kanji(id:"妙", meanings:["strange", "exquisite"], onyomi:["ミョウ"], kunyomi:["たえ"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"奇妙", reading:"きみょう", meaning:"strange"),
            KanjiExample(word:"妙に", reading:"みょうに", meaning:"strangely")]),
        Kanji(id:"黙", meanings:["silent", "mute"], onyomi:["モク"], kunyomi:["だま"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"沈黙", reading:"ちんもく", meaning:"silence"),
            KanjiExample(word:"黙る", reading:"だまる", meaning:"to fall silent")]),
        Kanji(id:"誘", meanings:["invite", "attract"], onyomi:["ユウ"], kunyomi:["さそ"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"誘う", reading:"さそう", meaning:"to invite"),
            KanjiExample(word:"誘惑", reading:"ゆうわく", meaning:"temptation")]),
        Kanji(id:"欲", meanings:["desire", "want"], onyomi:["ヨク"], kunyomi:["ほ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"欲しい", reading:"ほしい", meaning:"want"),
            KanjiExample(word:"欲求", reading:"よっきゅう", meaning:"desire")]),
        Kanji(id:"抑", meanings:["suppress", "control"], onyomi:["ヨク"], kunyomi:["おさ"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"抑制", reading:"よくせい", meaning:"suppression"),
            KanjiExample(word:"抑える", reading:"おさえる", meaning:"to suppress")]),
        Kanji(id:"裂", meanings:["split", "tear"], onyomi:["レツ"], kunyomi:["さ"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"分裂", reading:"ぶんれつ", meaning:"division/split"),
            KanjiExample(word:"裂く", reading:"さく", meaning:"to tear")]),
        Kanji(id:"漏", meanings:["leak", "omit"], onyomi:["ロウ"], kunyomi:["も"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"漏れる", reading:"もれる", meaning:"to leak"),
            KanjiExample(word:"漏洩", reading:"ろうえい", meaning:"leakage")]),
        Kanji(id:"湾", meanings:["bay", "gulf"], onyomi:["ワン"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"湾岸", reading:"わんがん", meaning:"bay shore"),
            KanjiExample(word:"台湾", reading:"たいわん", meaning:"Taiwan")]),
        Kanji(id:"腐", meanings:["rot", "corrupt"], onyomi:["フ"], kunyomi:["くさ"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"腐敗", reading:"ふはい", meaning:"corruption"),
            KanjiExample(word:"腐る", reading:"くさる", meaning:"to rot")]),
        Kanji(id:"奉", meanings:["serve", "offer"], onyomi:["ホウ", "ブ"], kunyomi:["たてまつ", "まつ"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"奉仕", reading:"ほうし", meaning:"service"),
            KanjiExample(word:"信奉", reading:"しんぽう", meaning:"belief")]),
        Kanji(id:"崩", meanings:["collapse", "crumble"], onyomi:["ホウ"], kunyomi:["くず"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"崩壊", reading:"ほうかい", meaning:"collapse"),
            KanjiExample(word:"崩れる", reading:"くずれる", meaning:"to crumble")]),
        Kanji(id:"蔑", meanings:["despise", "scorn"], onyomi:["ベツ"], kunyomi:["さげす"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"軽蔑", reading:"けいべつ", meaning:"contempt"),
            KanjiExample(word:"蔑む", reading:"さげすむ", meaning:"to despise")]),
        Kanji(id:"偏", meanings:["lean", "partial"], onyomi:["ヘン"], kunyomi:["かたよ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"偏見", reading:"へんけん", meaning:"prejudice"),
            KanjiExample(word:"偏る", reading:"かたよる", meaning:"to be biased")]),
        Kanji(id:"弊", meanings:["evil", "abuse"], onyomi:["ヘイ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"弊害", reading:"へいがい", meaning:"harmful effect"),
            KanjiExample(word:"語弊", reading:"ごへい", meaning:"misleading expression")]),
        Kanji(id:"璧", meanings:["jade", "perfect"], onyomi:["ヘキ"], kunyomi:[], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"完璧", reading:"かんぺき", meaning:"perfect"),
            KanjiExample(word:"璧", reading:"たま", meaning:"precious jade")]),
        Kanji(id:"募", meanings:["recruit", "gather"], onyomi:["ボ"], kunyomi:["つの"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"募集", reading:"ぼしゅう", meaning:"recruitment"),
            KanjiExample(word:"募る", reading:"つのる", meaning:"to recruit")]),
        Kanji(id:"冒", meanings:["risk", "venture"], onyomi:["ボウ"], kunyomi:["おか"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"冒険", reading:"ぼうけん", meaning:"adventure"),
            KanjiExample(word:"冒す", reading:"おかす", meaning:"to risk")]),
        Kanji(id:"朴", meanings:["simple", "plain"], onyomi:["ボク", "ホク"], kunyomi:["ほお"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"素朴", reading:"そぼく", meaning:"simple/plain"),
            KanjiExample(word:"朴念仁", reading:"ぼくねんじん", meaning:"dull person")]),
        Kanji(id:"没", meanings:["sink", "die"], onyomi:["ボツ"], kunyomi:[], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"没頭", reading:"ぼっとう", meaning:"immersion"),
            KanjiExample(word:"没落", reading:"ぼつらく", meaning:"decline")]),
        Kanji(id:"摩", meanings:["rub", "grind"], onyomi:["マ", "バ"], kunyomi:["ま"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"摩擦", reading:"まさつ", meaning:"friction"),
            KanjiExample(word:"摩耗", reading:"まもう", meaning:"wear and tear")]),
        Kanji(id:"奮", meanings:["stirred up", "excited"], onyomi:["フン"], kunyomi:["ふる"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"興奮", reading:"こうふん", meaning:"excitement"),
            KanjiExample(word:"奮闘", reading:"ふんとう", meaning:"struggle")]),
        Kanji(id:"噴", meanings:["spout", "burst"], onyomi:["フン"], kunyomi:["ふ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"噴火", reading:"ふんか", meaning:"volcanic eruption"),
            KanjiExample(word:"噴出", reading:"ふんしゅつ", meaning:"eruption")]),
        Kanji(id:"覆", meanings:["overturn", "cover"], onyomi:["フク"], kunyomi:["おお", "くつがえ"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"覆す", reading:"くつがえす", meaning:"to overturn"),
            KanjiExample(word:"覆う", reading:"おおう", meaning:"to cover")]),
        Kanji(id:"浮", meanings:["float", "emerge"], onyomi:["フ"], kunyomi:["う"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"浮かぶ", reading:"うかぶ", meaning:"to float"),
            KanjiExample(word:"浮気", reading:"うわき", meaning:"infidelity")]),
        Kanji(id:"傲", meanings:["arrogant", "haughty"], onyomi:["ゴウ"], kunyomi:["おご"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"傲慢", reading:"ごうまん", meaning:"arrogant"),
            KanjiExample(word:"傲る", reading:"おごる", meaning:"to be arrogant")]),
        Kanji(id:"囚", meanings:["prisoner", "captive"], onyomi:["シュウ"], kunyomi:["とら"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"囚人", reading:"しゅうじん", meaning:"prisoner"),
            KanjiExample(word:"囚われる", reading:"とらわれる", meaning:"to be captured")]),
        Kanji(id:"赦", meanings:["pardon", "forgive"], onyomi:["シャ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"容赦", reading:"ようしゃ", meaning:"mercy"),
            KanjiExample(word:"赦免", reading:"しゃめん", meaning:"pardon")]),
        Kanji(id:"叱", meanings:["scold", "rebuke"], onyomi:["シツ"], kunyomi:["しか"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"叱る", reading:"しかる", meaning:"to scold"),
            KanjiExample(word:"叱責", reading:"しっせき", meaning:"scolding")]),
        Kanji(id:"漆", meanings:["lacquer", "black"], onyomi:["シツ"], kunyomi:["うるし"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"漆器", reading:"しっき", meaning:"lacquerware"),
            KanjiExample(word:"漆", reading:"うるし", meaning:"lacquer")]),
        Kanji(id:"芝", meanings:["lawn", "turf"], onyomi:["シ"], kunyomi:["しば"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"芝生", reading:"しばふ", meaning:"lawn"),
            KanjiExample(word:"芝居", reading:"しばい", meaning:"play/theater")]),
        Kanji(id:"呪", meanings:["curse", "spell"], onyomi:["ジュ"], kunyomi:["のろ", "まじな"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"呪い", reading:"のろい", meaning:"curse"),
            KanjiExample(word:"呪文", reading:"じゅもん", meaning:"spell/incantation")]),
        Kanji(id:"狩", meanings:["hunt"], onyomi:["シュ"], kunyomi:["か"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"狩り", reading:"かり", meaning:"hunting"),
            KanjiExample(word:"狩猟", reading:"しゅりょう", meaning:"hunting")]),
        Kanji(id:"朱", meanings:["vermilion", "red"], onyomi:["シュ"], kunyomi:["あけ"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"朱色", reading:"しゅいろ", meaning:"vermilion"),
            KanjiExample(word:"朱印", reading:"しゅいん", meaning:"red seal")]),
        Kanji(id:"粋", meanings:["pure", "essence"], onyomi:["スイ"], kunyomi:["いき"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"粋", reading:"いき", meaning:"stylish/chic"),
            KanjiExample(word:"純粋", reading:"じゅんすい", meaning:"pure")]),
        Kanji(id:"凄", meanings:["terrific", "awful"], onyomi:["セイ"], kunyomi:["すご"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"凄い", reading:"すごい", meaning:"amazing/terrible"),
            KanjiExample(word:"凄惨", reading:"せいさん", meaning:"gruesome")]),
        Kanji(id:"繕", meanings:["mend", "repair"], onyomi:["ゼン"], kunyomi:["つくろ"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"修繕", reading:"しゅうぜん", meaning:"repair"),
            KanjiExample(word:"繕う", reading:"つくろう", meaning:"to mend")]),
        Kanji(id:"疎", meanings:["sparse", "estranged"], onyomi:["ソ"], kunyomi:["うと", "まば"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"疎外", reading:"そがい", meaning:"alienation"),
            KanjiExample(word:"疎い", reading:"うとい", meaning:"unfamiliar with")]),
        Kanji(id:"遡", meanings:["go upstream", "trace back"], onyomi:["ソ"], kunyomi:["さかのぼ"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"遡る", reading:"さかのぼる", meaning:"to trace back"),
            KanjiExample(word:"遡及", reading:"そきゅう", meaning:"retroactivity")]),
        Kanji(id:"爽", meanings:["refreshing", "clear"], onyomi:["ソウ"], kunyomi:["さわ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"爽やか", reading:"さわやか", meaning:"refreshing"),
            KanjiExample(word:"爽快", reading:"そうかい", meaning:"refreshing feeling")]),
        Kanji(id:"妥", meanings:["proper", "reasonable"], onyomi:["ダ"], kunyomi:[], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"妥当", reading:"だとう", meaning:"reasonable"),
            KanjiExample(word:"妥協", reading:"だきょう", meaning:"compromise")]),
        Kanji(id:"堕", meanings:["fall", "degenerate"], onyomi:["ダ"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"堕落", reading:"だらく", meaning:"depravity"),
            KanjiExample(word:"堕胎", reading:"だたい", meaning:"abortion")]),
        Kanji(id:"痴", meanings:["foolish", "silly"], onyomi:["チ"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"痴呆", reading:"ちほう", meaning:"dementia"),
            KanjiExample(word:"無知", reading:"むち", meaning:"ignorance")]),
        Kanji(id:"滴", meanings:["drop", "drip"], onyomi:["テキ"], kunyomi:["しずく", "した"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"水滴", reading:"すいてき", meaning:"water drop"),
            KanjiExample(word:"点滴", reading:"てんてき", meaning:"drip/IV")]),
        Kanji(id:"溺", meanings:["drown", "indulge"], onyomi:["デキ"], kunyomi:["おぼ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"溺れる", reading:"おぼれる", meaning:"to drown"),
            KanjiExample(word:"溺愛", reading:"できあい", meaning:"excessive love")]),
        Kanji(id:"吐", meanings:["vomit", "confess"], onyomi:["ト"], kunyomi:["は"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"吐く", reading:"はく", meaning:"to vomit"),
            KanjiExample(word:"吐露", reading:"とろ", meaning:"confession")]),
        Kanji(id:"頓", meanings:["sudden", "in order"], onyomi:["トン"], kunyomi:[], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"頓挫", reading:"とんざ", meaning:"setback"),
            KanjiExample(word:"整頓", reading:"せいとん", meaning:"tidiness")]),
        Kanji(id:"弔", meanings:["mourn", "condole"], onyomi:["チョウ"], kunyomi:["とむら"], level:.N1, strokeCount:4, examples:[
            KanjiExample(word:"弔う", reading:"とむらう", meaning:"to mourn"),
            KanjiExample(word:"弔問", reading:"ちょうもん", meaning:"condolence visit")]),
        Kanji(id:"藍", meanings:["indigo"], onyomi:["ラン"], kunyomi:["あい"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"藍色", reading:"あいいろ", meaning:"indigo blue"),
            KanjiExample(word:"藍", reading:"あい", meaning:"indigo")]),
        Kanji(id:"嬉", meanings:["happy", "joyful"], onyomi:["キ"], kunyomi:["うれ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"嬉しい", reading:"うれしい", meaning:"happy"),
            KanjiExample(word:"嬉々", reading:"きき", meaning:"with delight")]),
        Kanji(id:"憐", meanings:["pity", "sympathize"], onyomi:["レン"], kunyomi:["あわ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"憐れむ", reading:"あわれむ", meaning:"to pity"),
            KanjiExample(word:"可憐", reading:"かれん", meaning:"lovely/pitiful")]),
        Kanji(id:"惜", meanings:["regret", "precious"], onyomi:["セキ"], kunyomi:["お"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"惜しい", reading:"おしい", meaning:"regrettable"),
            KanjiExample(word:"惜しむ", reading:"おしむ", meaning:"to regret")]),
        Kanji(id:"悼", meanings:["mourn", "grieve"], onyomi:["トウ"], kunyomi:["いた"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"悼む", reading:"いたむ", meaning:"to grieve"),
            KanjiExample(word:"追悼", reading:"ついとう", meaning:"mourning")]),
        Kanji(id:"慄", meanings:["shudder", "tremble"], onyomi:["リツ"], kunyomi:["ふる"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"戦慄", reading:"せんりつ", meaning:"shudder"),
            KanjiExample(word:"慄く", reading:"おののく", meaning:"to tremble")]),
        Kanji(id:"慚", meanings:["ashamed", "remorseful"], onyomi:["ザン"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"慚愧", reading:"ざんき", meaning:"remorse"),
            KanjiExample(word:"慚愧に堪えない", reading:"ざんきにたえない", meaning:"deeply ashamed")]),
        Kanji(id:"煤", meanings:["soot", "smudge"], onyomi:["バイ"], kunyomi:["すす"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"煤", reading:"すす", meaning:"soot"),
            KanjiExample(word:"煤煙", reading:"ばいえん", meaning:"soot and smoke")]),
        Kanji(id:"籠", meanings:["basket", "cage", "to stay"], onyomi:["ロウ"], kunyomi:["かご", "こも"], level:.N1, strokeCount:22, examples:[
            KanjiExample(word:"鳥籠", reading:"とりかご", meaning:"birdcage"),
            KanjiExample(word:"籠る", reading:"こもる", meaning:"to seclude oneself")]),
        Kanji(id:"棟", meanings:["ridge beam", "building"], onyomi:["トウ"], kunyomi:["むね", "むな"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"棟", reading:"むね", meaning:"ridge/building"),
            KanjiExample(word:"一棟", reading:"いちとう", meaning:"one building")]),
        Kanji(id:"澄", meanings:["clear", "limpid"], onyomi:["チョウ"], kunyomi:["す"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"澄む", reading:"すむ", meaning:"to become clear"),
            KanjiExample(word:"澄んだ", reading:"すんだ", meaning:"clear")]),
        Kanji(id:"眺", meanings:["gaze", "view"], onyomi:["チョウ"], kunyomi:["なが"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"眺める", reading:"ながめる", meaning:"to gaze"),
            KanjiExample(word:"眺望", reading:"ちょうぼう", meaning:"view/prospect")]),
        Kanji(id:"朧", meanings:["hazy", "misty"], onyomi:["ロウ"], kunyomi:["おぼろ"], level:.N1, strokeCount:20, examples:[
            KanjiExample(word:"朧月", reading:"おぼろづき", meaning:"hazy moon"),
            KanjiExample(word:"朧", reading:"おぼろ", meaning:"hazy/dim")]),
        Kanji(id:"薫", meanings:["fragrant", "virtuous"], onyomi:["クン"], kunyomi:["かお"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"薫る", reading:"かおる", meaning:"to be fragrant"),
            KanjiExample(word:"薫風", reading:"くんぷう", meaning:"fragrant breeze")]),
        Kanji(id:"霞", meanings:["haze", "mist"], onyomi:["カ"], kunyomi:["かすみ"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"霞", reading:"かすみ", meaning:"haze/mist"),
            KanjiExample(word:"霞が関", reading:"かすみがせき", meaning:"Kasumigaseki")]),
        Kanji(id:"濁", meanings:["muddy", "turbid"], onyomi:["ダク"], kunyomi:["にご"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"濁る", reading:"にごる", meaning:"to become turbid"),
            KanjiExample(word:"汚濁", reading:"おだく", meaning:"contamination")]),
        Kanji(id:"凛", meanings:["dignified", "severe cold"], onyomi:["リン"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"凛とした", reading:"りんとした", meaning:"dignified"),
            KanjiExample(word:"凛々しい", reading:"りりしい", meaning:"gallant")]),
        Kanji(id:"葛", meanings:["kudzu", "conflict"], onyomi:["カツ"], kunyomi:["くず"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"葛藤", reading:"かっとう", meaning:"conflict"),
            KanjiExample(word:"葛", reading:"くず", meaning:"kudzu")]),
        Kanji(id:"悶", meanings:["anguish", "worry"], onyomi:["モン"], kunyomi:["もだ"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"悶える", reading:"もだえる", meaning:"to writhe"),
            KanjiExample(word:"苦悶", reading:"くもん", meaning:"anguish")]),
        Kanji(id:"嘲", meanings:["ridicule", "mock"], onyomi:["チョウ"], kunyomi:["あざけ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"嘲笑", reading:"ちょうしょう", meaning:"mockery"),
            KanjiExample(word:"嘲る", reading:"あざける", meaning:"to mock")]),
        Kanji(id:"慟", meanings:["wail", "lament"], onyomi:["ドウ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"慟哭", reading:"どうこく", meaning:"wailing"),
            KanjiExample(word:"慟く", reading:"なげく", meaning:"to lament")]),
        Kanji(id:"巡", meanings:["go around", "patrol"], onyomi:["ジュン"], kunyomi:["めぐ"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"巡る", reading:"めぐる", meaning:"to go around"),
            KanjiExample(word:"巡回", reading:"じゅんかい", meaning:"patrol")]),
        Kanji(id:"罷", meanings:["stop", "dismiss"], onyomi:["ヒ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"罷免", reading:"ひめん", meaning:"dismissal"),
            KanjiExample(word:"罷業", reading:"ひぎょう", meaning:"strike")]),
        Kanji(id:"斡", meanings:["manage", "mediate"], onyomi:["アツ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"斡旋", reading:"あっせん", meaning:"mediation"),
            KanjiExample(word:"斡旋者", reading:"あっせんしゃ", meaning:"mediator")]),
        Kanji(id:"瓦", meanings:["tile", "roof tile"], onyomi:["ガ"], kunyomi:["かわら"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"瓦", reading:"かわら", meaning:"roof tile"),
            KanjiExample(word:"瓦解", reading:"がかい", meaning:"collapse")]),
        Kanji(id:"扇", meanings:["fan"], onyomi:["セン"], kunyomi:["おうぎ"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"扇", reading:"おうぎ", meaning:"fan"),
            KanjiExample(word:"扇風機", reading:"せんぷうき", meaning:"electric fan")]),
        Kanji(id:"酢", meanings:["vinegar"], onyomi:["サク"], kunyomi:["す"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"酢", reading:"す", meaning:"vinegar"),
            KanjiExample(word:"酢酸", reading:"さくさん", meaning:"acetic acid")]),
        Kanji(id:"薪", meanings:["firewood"], onyomi:["シン"], kunyomi:["たきぎ"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"薪", reading:"たきぎ", meaning:"firewood"),
            KanjiExample(word:"薪ストーブ", reading:"まきすとーぶ", meaning:"wood stove")]),
        Kanji(id:"凡", meanings:["ordinary", "common", "mediocre"], onyomi:["ボン", "ハン"], kunyomi:[], level:.N1, strokeCount:3, examples:[
            KanjiExample(word:"平凡", reading:"へいぼん", meaning:"ordinary"),
            KanjiExample(word:"非凡", reading:"ひぼん", meaning:"extraordinary")]),
        Kanji(id:"乏", meanings:["scarce", "lacking", "poor"], onyomi:["ボウ"], kunyomi:["とぼ"], level:.N1, strokeCount:4, examples:[
            KanjiExample(word:"貧乏", reading:"びんぼう", meaning:"poverty"),
            KanjiExample(word:"乏しい", reading:"とぼしい", meaning:"scarce/lacking")]),
        Kanji(id:"玄", meanings:["mysterious", "dark", "profound"], onyomi:["ゲン"], kunyomi:[], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"玄関", reading:"げんかん", meaning:"entrance/front door"),
            KanjiExample(word:"玄人", reading:"くろうと", meaning:"expert/professional")]),
        Kanji(id:"誉", meanings:["honor", "reputation", "praise"], onyomi:["ヨ"], kunyomi:["ほま", "ほめ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"名誉", reading:"めいよ", meaning:"honor"),
            KanjiExample(word:"誉れ", reading:"ほまれ", meaning:"honor/glory")]),
        Kanji(id:"彰", meanings:["clear", "evident", "commend"], onyomi:["ショウ"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"表彰", reading:"ひょうしょう", meaning:"commendation"),
            KanjiExample(word:"彰徳", reading:"しょうとく", meaning:"virtuous example")]),
        Kanji(id:"懲", meanings:["punish", "discipline", "learn lesson"], onyomi:["チョウ"], kunyomi:["こ"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"懲役", reading:"ちょうえき", meaning:"imprisonment"),
            KanjiExample(word:"懲りる", reading:"こりる", meaning:"to learn one's lesson")]),
        Kanji(id:"陪", meanings:["accompany", "assist", "attend"], onyomi:["バイ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"陪審", reading:"ばいしん", meaning:"jury"),
            KanjiExample(word:"陪席", reading:"ばいせき", meaning:"sitting in on")]),
        Kanji(id:"矯", meanings:["correct", "straighten", "reform"], onyomi:["キョウ"], kunyomi:["た"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"矯正", reading:"きょうせい", meaning:"correction/reform"),
            KanjiExample(word:"矯める", reading:"ためる", meaning:"to correct")]),
        Kanji(id:"忸", meanings:["blush", "be ashamed"], onyomi:["ジク"], kunyomi:[], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"忸怩", reading:"じくじ", meaning:"shame/mortification"),
            KanjiExample(word:"忸怩たる", reading:"じくじたる", meaning:"shameful")]),
        Kanji(id:"驍", meanings:["brave", "valiant"], onyomi:["ギョウ"], kunyomi:[], level:.N1, strokeCount:22, examples:[
            KanjiExample(word:"驍将", reading:"ぎょうしょう", meaning:"brave general"),
            KanjiExample(word:"驍勇", reading:"ぎょうゆう", meaning:"bravery")]),
        Kanji(id:"僻", meanings:["remote", "biased", "rustic"], onyomi:["ヘキ"], kunyomi:["ひが"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"僻地", reading:"へきち", meaning:"remote area"),
            KanjiExample(word:"偏僻", reading:"へんぺき", meaning:"remote and isolated")]),
        Kanji(id:"貶", meanings:["demote", "belittle"], onyomi:["ヘン"], kunyomi:["おと", "けな"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"貶める", reading:"おとしめる", meaning:"to belittle"),
            KanjiExample(word:"貶す", reading:"けなす", meaning:"to disparage")]),
        Kanji(id:"懐", meanings:["pocket", "miss", "nostalgia"], onyomi:["カイ"], kunyomi:["ふところ", "なつ"], level:.N1, strokeCount:19, examples:[
            KanjiExample(word:"懐かしい", reading:"なつかしい", meaning:"nostalgic"),
            KanjiExample(word:"懐中", reading:"かいちゅう", meaning:"pocket")]),
        Kanji(id:"偽", meanings:["false", "fake", "pretend", "counterfeit"], onyomi:["ギ"], kunyomi:["にせ", "いつわ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"偽造", reading:"ぎぞう", meaning:"forgery/fabrication"),
            KanjiExample(word:"偽る", reading:"いつわる", meaning:"to deceive/fake")]),
        Kanji(id:"踏", meanings:["step on", "stamp", "tread", "experience"], onyomi:["トウ"], kunyomi:["ふ"], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"踏む", reading:"ふむ", meaning:"to step on"),
            KanjiExample(word:"踏切", reading:"ふみきり", meaning:"railroad crossing")]),
        Kanji(id:"嫁", meanings:["bride", "wife", "marry into"], onyomi:["カ"], kunyomi:["よめ", "とつ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"花嫁", reading:"はなよめ", meaning:"bride"),
            KanjiExample(word:"嫁ぐ", reading:"とつぐ", meaning:"to marry (woman)")]),
        Kanji(id:"拘", meanings:["arrest", "adhere to", "be particular about"], onyomi:["コウ"], kunyomi:["かかわ"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"拘束", reading:"こうそく", meaning:"restraint/detention"),
            KanjiExample(word:"拘る", reading:"こだわる", meaning:"to be particular about")]),
        Kanji(id:"覇", meanings:["supremacy", "hegemony", "champion"], onyomi:["ハ"], kunyomi:[], level:.N1, strokeCount:19, examples:[
            KanjiExample(word:"覇権", reading:"はけん", meaning:"hegemony/supremacy"),
            KanjiExample(word:"制覇", reading:"せいは", meaning:"conquest/domination")]),
        Kanji(id:"獄", meanings:["prison", "jail", "hell"], onyomi:["ゴク"], kunyomi:[], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"監獄", reading:"かんごく", meaning:"prison"),
            KanjiExample(word:"地獄", reading:"じごく", meaning:"hell")]),
        Kanji(id:"琴", meanings:["koto", "stringed instrument", "harp"], onyomi:["キン", "コト"], kunyomi:["こと"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"琴", reading:"こと", meaning:"koto (Japanese harp)"),
            KanjiExample(word:"ピアノ琴", reading:"ぴあのごと", meaning:"piano and koto")]),
        Kanji(id:"鼓", meanings:["drum", "beat", "encourage"], onyomi:["コ"], kunyomi:["つづみ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"太鼓", reading:"たいこ", meaning:"drum"),
            KanjiExample(word:"鼓動", reading:"こどう", meaning:"heartbeat/pulsation")]),
        Kanji(id:"詠", meanings:["compose poetry", "recite", "chant"], onyomi:["エイ"], kunyomi:["よ"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"詠む", reading:"よむ", meaning:"to compose poetry"),
            KanjiExample(word:"詠嘆", reading:"えいたん", meaning:"exclamation/admiration")]),
        Kanji(id:"怨", meanings:["grudge", "resentment", "spite"], onyomi:["オン", "エン"], kunyomi:["うら"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"怨恨", reading:"えんこん", meaning:"deep grudge"),
            KanjiExample(word:"怨む", reading:"うらむ", meaning:"to resent/bear grudge")]),
        Kanji(id:"恨", meanings:["regret", "resent", "harbor grudge"], onyomi:["コン"], kunyomi:["うら"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"恨む", reading:"うらむ", meaning:"to resent"),
            KanjiExample(word:"悔恨", reading:"かいこん", meaning:"regret/remorse")]),
        Kanji(id:"刻", meanings:["engrave", "carve", "time", "minute"], onyomi:["コク"], kunyomi:["きざ"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"時刻", reading:"じこく", meaning:"time/hour"),
            KanjiExample(word:"彫刻", reading:"ちょうこく", meaning:"sculpture/engraving")]),
        Kanji(id:"峡", meanings:["gorge", "strait", "ravine"], onyomi:["キョウ"], kunyomi:[], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"峡谷", reading:"きょうこく", meaning:"gorge/canyon"),
            KanjiExample(word:"海峡", reading:"かいきょう", meaning:"strait/channel")]),
        Kanji(id:"礁", meanings:["reef", "shoal"], onyomi:["ショウ"], kunyomi:[], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"岩礁", reading:"がんしょう", meaning:"reef"),
            KanjiExample(word:"珊瑚礁", reading:"さんごしょう", meaning:"coral reef")]),
        Kanji(id:"塵", meanings:["dust", "dirt", "this world"], onyomi:["ジン"], kunyomi:["ちり"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"塵", reading:"ちり", meaning:"dust"),
            KanjiExample(word:"塵埃", reading:"じんあい", meaning:"dust and dirt")]),
        Kanji(id:"媒", meanings:["go-between", "medium", "intermediary"], onyomi:["バイ"], kunyomi:[], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"媒体", reading:"ばいたい", meaning:"medium/media"),
            KanjiExample(word:"触媒", reading:"しょくばい", meaning:"catalyst")]),
        Kanji(id:"婿", meanings:["son-in-law", "bridegroom"], onyomi:["セイ"], kunyomi:["むこ"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"花婿", reading:"はなむこ", meaning:"groom"),
            KanjiExample(word:"婿養子", reading:"むこようし", meaning:"adopted son-in-law")]),
        Kanji(id:"尚", meanings:["still", "moreover", "esteem", "revere"], onyomi:["ショウ"], kunyomi:["なお"], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"高尚", reading:"こうしょう", meaning:"noble/lofty"),
            KanjiExample(word:"尚更", reading:"なおさら", meaning:"even more")]),
        Kanji(id:"謡", meanings:["ballad", "Noh chant", "song"], onyomi:["ヨウ"], kunyomi:["うたい", "うた"], level:.N1, strokeCount:16, examples:[
            KanjiExample(word:"謡", reading:"うたい", meaning:"Noh chanting"),
            KanjiExample(word:"謡曲", reading:"ようきょく", meaning:"Noh music")]),
        Kanji(id:"吟", meanings:["chant", "recite", "moan", "compose"], onyomi:["ギン"], kunyomi:["うた"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"吟じる", reading:"ぎんじる", meaning:"to recite poetry"),
            KanjiExample(word:"詩吟", reading:"しぎん", meaning:"poetic recitation")]),
        Kanji(id:"凌", meanings:["endure", "surpass", "rise above"], onyomi:["リョウ"], kunyomi:["しの"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"凌ぐ", reading:"しのぐ", meaning:"to endure/surpass"),
            KanjiExample(word:"凌駕", reading:"りょうが", meaning:"surpassing/exceeding")]),
        Kanji(id:"肢", meanings:["limb", "extremity", "branch"], onyomi:["シ"], kunyomi:[], level:.N1, strokeCount:8, examples:[
            KanjiExample(word:"四肢", reading:"しし", meaning:"four limbs"),
            KanjiExample(word:"上肢", reading:"じょうし", meaning:"upper limbs/arms")]),
        Kanji(id:"肝", meanings:["liver", "essential", "crucial"], onyomi:["カン"], kunyomi:["きも"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"肝臓", reading:"かんぞう", meaning:"liver"),
            KanjiExample(word:"肝心", reading:"かんじん", meaning:"essential/crucial")]),
        Kanji(id:"臓", meanings:["internal organ", "viscera"], onyomi:["ゾウ"], kunyomi:[], level:.N1, strokeCount:19, examples:[
            KanjiExample(word:"内臓", reading:"ないぞう", meaning:"internal organs"),
            KanjiExample(word:"心臓", reading:"しんぞう", meaning:"heart")]),
        Kanji(id:"崖", meanings:["cliff", "bluff", "precipice"], onyomi:["ガイ"], kunyomi:["がけ"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"崖", reading:"がけ", meaning:"cliff"),
            KanjiExample(word:"絶壁崖", reading:"ぜっぺきがけ", meaning:"sheer cliff")]),
        Kanji(id:"脆", meanings:["fragile", "brittle", "weak", "feeble"], onyomi:["ゼイ"], kunyomi:["もろ"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"脆い", reading:"もろい", meaning:"fragile/brittle"),
            KanjiExample(word:"脆弱", reading:"ぜいじゃく", meaning:"fragile/vulnerable")]),
        Kanji(id:"蔓", meanings:["vine", "tendril", "spread", "creep"], onyomi:["マン", "バン"], kunyomi:["つる"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"蔓延", reading:"まんえん", meaning:"spreading/prevalence"),
            KanjiExample(word:"蔓草", reading:"つるくさ", meaning:"creeping plant")]),
        Kanji(id:"践", meanings:["step on", "walk", "carry out", "fulfil"], onyomi:["セン"], kunyomi:["ふ"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"実践", reading:"じっせん", meaning:"practice/implementation"),
            KanjiExample(word:"践む", reading:"ふむ", meaning:"to step on")]),
        Kanji(id:"踪", meanings:["trace", "track", "whereabouts"], onyomi:["ソウ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"失踪", reading:"しっそう", meaning:"disappearance"),
            KanjiExample(word:"行方不明", reading:"ゆくえふめい", meaning:"missing")]),
        Kanji(id:"暁", meanings:["dawn", "daybreak", "in the event of"], onyomi:["ギョウ"], kunyomi:["あかつき"], level:.N1, strokeCount:12, examples:[
            KanjiExample(word:"暁", reading:"あかつき", meaning:"dawn/daybreak"),
            KanjiExample(word:"暁に", reading:"あかつきに", meaning:"when/at the time of")]),
        Kanji(id:"彗", meanings:["comet", "broom", "intelligent"], onyomi:["スイ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"彗星", reading:"すいせい", meaning:"comet"),
            KanjiExample(word:"彗眼", reading:"すいがん", meaning:"sharp eye")]),
        Kanji(id:"砦", meanings:["fort", "small fortress", "stronghold"], onyomi:["サイ"], kunyomi:["とりで"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"砦", reading:"とりで", meaning:"fort/stronghold"),
            KanjiExample(word:"山砦", reading:"やまとりで", meaning:"mountain fort")]),
        Kanji(id:"梗", meanings:["main point", "spine", "obstruction"], onyomi:["コウ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"脳梗塞", reading:"のうこうそく", meaning:"cerebral infarction"),
            KanjiExample(word:"心筋梗塞", reading:"しんきんこうそく", meaning:"myocardial infarction")]),
        Kanji(id:"冶", meanings:["smelt", "refine metal", "metallurgy"], onyomi:["ヤ"], kunyomi:["い"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"冶金", reading:"やきん", meaning:"metallurgy"),
            KanjiExample(word:"鍛冶", reading:"かじ", meaning:"blacksmith/forging")]),
        Kanji(id:"侯", meanings:["lord", "feudal lord", "marquis"], onyomi:["コウ"], kunyomi:[], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"諸侯", reading:"しょこう", meaning:"feudal lords"),
            KanjiExample(word:"侯爵", reading:"こうしゃく", meaning:"marquis")]),
        Kanji(id:"藩", meanings:["feudal domain", "clan", "fief"], onyomi:["ハン"], kunyomi:[], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"藩", reading:"はん", meaning:"feudal domain"),
            KanjiExample(word:"藩主", reading:"はんしゅ", meaning:"feudal lord")]),
        Kanji(id:"鑓", meanings:["spear", "lance"], onyomi:["ヤリ"], kunyomi:["やり"], level:.N1, strokeCount:23, examples:[
            KanjiExample(word:"槍", reading:"やり", meaning:"spear/lance"),
            KanjiExample(word:"槍術", reading:"そうじゅつ", meaning:"spear fighting")]),
        Kanji(id:"寅", meanings:["tiger", "third zodiac sign"], onyomi:["イン"], kunyomi:["とら"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"寅年", reading:"とらどし", meaning:"year of the tiger"),
            KanjiExample(word:"寅の刻", reading:"とらのこく", meaning:"3-5am")]),
        Kanji(id:"卯", meanings:["rabbit", "fourth zodiac sign"], onyomi:["ボウ"], kunyomi:["う"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"卯年", reading:"うどし", meaning:"year of the rabbit"),
            KanjiExample(word:"卯の花", reading:"うのはな", meaning:"bridal wreath flower")]),
        Kanji(id:"巳", meanings:["snake", "sixth zodiac sign"], onyomi:["シ"], kunyomi:["み"], level:.N1, strokeCount:3, examples:[
            KanjiExample(word:"巳年", reading:"みどし", meaning:"year of the snake"),
            KanjiExample(word:"巳の刻", reading:"みのこく", meaning:"9-11am")]),
        Kanji(id:"戌", meanings:["dog", "eleventh zodiac sign"], onyomi:["ジュツ"], kunyomi:["いぬ"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"戌年", reading:"いぬどし", meaning:"year of the dog"),
            KanjiExample(word:"戌の刻", reading:"いぬのこく", meaning:"7-9pm")]),
        Kanji(id:"亥", meanings:["boar", "twelfth zodiac sign"], onyomi:["ガイ"], kunyomi:["い"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"亥年", reading:"いどし", meaning:"year of the boar"),
            KanjiExample(word:"亥の刻", reading:"いのこく", meaning:"9-11pm")]),
        Kanji(id:"峻", meanings:["steep", "strict", "severe", "high"], onyomi:["シュン"], kunyomi:[], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"峻厳", reading:"しゅんげん", meaning:"strict/severe"),
            KanjiExample(word:"峻烈", reading:"しゅんれつ", meaning:"harsh/severe")]),
        Kanji(id:"聡", meanings:["wise", "alert", "sagacious", "sharp"], onyomi:["ソウ"], kunyomi:["さと"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"聡明", reading:"そうめい", meaning:"wise/intelligent"),
            KanjiExample(word:"聡い", reading:"さとい", meaning:"quick-witted")]),
        Kanji(id:"暦", meanings:["calendar", "almanac"], onyomi:["レキ", "リャク"], kunyomi:["こよみ"], level:.N1, strokeCount:14, examples:[
            KanjiExample(word:"暦", reading:"こよみ", meaning:"calendar"),
            KanjiExample(word:"西暦", reading:"せいれき", meaning:"Western calendar")]),
        Kanji(id:"桐", meanings:["paulownia tree"], onyomi:["トウ", "ドウ"], kunyomi:["きり"], level:.N1, strokeCount:10, examples:[
            KanjiExample(word:"桐", reading:"きり", meaning:"paulownia tree"),
            KanjiExample(word:"桐箱", reading:"きりばこ", meaning:"paulownia wood box")]),
        Kanji(id:"麓", meanings:["foot of mountain", "base", "foothills"], onyomi:["ロク"], kunyomi:["ふもと"], level:.N1, strokeCount:19, examples:[
            KanjiExample(word:"麓", reading:"ふもと", meaning:"foot of mountain"),
            KanjiExample(word:"山麓", reading:"さんろく", meaning:"mountainside/foothills")]),
        Kanji(id:"庵", meanings:["hermitage", "hut", "small dwelling"], onyomi:["アン"], kunyomi:["いおり"], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"庵", reading:"いおり", meaning:"hermitage/hut"),
            KanjiExample(word:"草庵", reading:"そうあん", meaning:"thatched hut")]),
        Kanji(id:"廟", meanings:["mausoleum", "shrine", "ancestral temple"], onyomi:["ビョウ"], kunyomi:[], level:.N1, strokeCount:15, examples:[
            KanjiExample(word:"廟", reading:"びょう", meaning:"mausoleum/ancestral shrine"),
            KanjiExample(word:"廟所", reading:"びょうしょ", meaning:"mausoleum")]),
        Kanji(id:"鎌", meanings:["sickle", "scythe"], onyomi:["レン"], kunyomi:["かま"], level:.N1, strokeCount:18, examples:[
            KanjiExample(word:"鎌", reading:"かま", meaning:"sickle/scythe"),
            KanjiExample(word:"鎌倉", reading:"かまくら", meaning:"Kamakura")]),
        Kanji(id:"鍬", meanings:["hoe", "mattock"], onyomi:["しょう"], kunyomi:["くわ"], level:.N1, strokeCount:17, examples:[
            KanjiExample(word:"鍬", reading:"くわ", meaning:"hoe"),
            KanjiExample(word:"鍬入れ", reading:"くわいれ", meaning:"groundbreaking ceremony")]),
        Kanji(id:"凧", meanings:["kite", "box kite"], onyomi:["ヨウ"], kunyomi:["たこ"], level:.N1, strokeCount:5, examples:[
            KanjiExample(word:"凧", reading:"たこ", meaning:"kite"),
            KanjiExample(word:"凧揚げ", reading:"たこあげ", meaning:"kite flying")]),
        Kanji(id:"嗅", meanings:["smell", "sniff", "scent"], onyomi:["キュウ"], kunyomi:["か"], level:.N1, strokeCount:13, examples:[
            KanjiExample(word:"嗅ぐ", reading:"かぐ", meaning:"to smell/sniff"),
            KanjiExample(word:"嗅覚", reading:"きゅうかく", meaning:"sense of smell")]),
        Kanji(id:"串", meanings:["spit", "skewer", "connect"], onyomi:["セン"], kunyomi:["くし"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"串", reading:"くし", meaning:"skewer/spit"),
            KanjiExample(word:"串焼き", reading:"くしやき", meaning:"skewered grilled food")]),
        Kanji(id:"凪", meanings:["calm", "lull", "windless sea"], onyomi:["なぎ"], kunyomi:["なぎ"], level:.N1, strokeCount:6, examples:[
            KanjiExample(word:"凪", reading:"なぎ", meaning:"calm/windless sea"),
            KanjiExample(word:"夕凪", reading:"ゆうなぎ", meaning:"evening calm")]),
        Kanji(id:"畏", meanings:["awe", "fear", "revere", "dread"], onyomi:["イ"], kunyomi:["おそ"], level:.N1, strokeCount:9, examples:[
            KanjiExample(word:"畏怖", reading:"いふ", meaning:"awe/dread"),
            KanjiExample(word:"畏敬", reading:"いけい", meaning:"reverence/awe")]),
    ]
}
