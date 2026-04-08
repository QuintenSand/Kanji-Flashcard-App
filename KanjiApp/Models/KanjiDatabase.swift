import Foundation

// MARK: - Kanji Database (N5 → N1)
struct KanjiDatabase {

    static let all: [Kanji] = n5 + n4 + n3 + n2 + n1

    // ─────────────────────────────────────────
    // MARK: N5 (80 kanji)
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
    // MARK: N4 (168 kanji — representative sample)
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
            KanjiExample(word:"弱点", reading:"じゃくてん", meaning:"weak point")])
    ]

    // ─────────────────────────────────────────
    // MARK: N3 (representative sample ~50)
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
            KanjiExample(word:"返事", reading:"へんじ", meaning:"reply")])
    ]

    // ─────────────────────────────────────────
    // MARK: N2 (representative sample ~50)
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
        Kanji(id:"対", meanings:["against","toward","pair"], onyomi:["タイ","ツイ"], kunyomi:[], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"対応", reading:"たいおう", meaning:"response / handling"),
            KanjiExample(word:"反対", reading:"はんたい", meaning:"opposition")]),
        Kanji(id:"性", meanings:["nature","sex","gender"], onyomi:["セイ","ショウ"], kunyomi:[], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"性格", reading:"せいかく", meaning:"personality"),
            KanjiExample(word:"可能性", reading:"かのうせい", meaning:"possibility")]),
        Kanji(id:"的", meanings:["target","of","~ic"], onyomi:["テキ"], kunyomi:["まと"], level:.N2, strokeCount:8, examples:[
            KanjiExample(word:"目的", reading:"もくてき", meaning:"purpose"),
            KanjiExample(word:"具体的", reading:"ぐたいてき", meaning:"concrete / specific")]),
        Kanji(id:"際", meanings:["occasion","side","edge"], onyomi:["サイ"], kunyomi:["きわ"], level:.N2, strokeCount:14, examples:[
            KanjiExample(word:"実際", reading:"じっさい", meaning:"reality / practice"),
            KanjiExample(word:"国際", reading:"こくさい", meaning:"international")]),
        Kanji(id:"現", meanings:["present","current","appear"], onyomi:["ゲン"], kunyomi:["あらわ"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"現在", reading:"げんざい", meaning:"present / now"),
            KanjiExample(word:"現実", reading:"げんじつ", meaning:"reality")]),
        Kanji(id:"連", meanings:["connect","take along","continuous"], onyomi:["レン"], kunyomi:["つら","つ"], level:.N2, strokeCount:10, examples:[
            KanjiExample(word:"連絡", reading:"れんらく", meaning:"contact / communication"),
            KanjiExample(word:"関連", reading:"かんれん", meaning:"relation / connection")]),
        Kanji(id:"提", meanings:["propose","carry in hand"], onyomi:["テイ"], kunyomi:["さ"], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"提案", reading:"ていあん", meaning:"proposal"),
            KanjiExample(word:"提供", reading:"ていきょう", meaning:"provision / offer")]),
        Kanji(id:"求", meanings:["request","demand","seek"], onyomi:["キュウ"], kunyomi:["もと"], level:.N2, strokeCount:7, examples:[
            KanjiExample(word:"求める", reading:"もとめる", meaning:"to seek"),
            KanjiExample(word:"要求", reading:"ようきゅう", meaning:"demand / request")]),
        Kanji(id:"確", meanings:["certain","confirm"], onyomi:["カク"], kunyomi:["たし"], level:.N2, strokeCount:15, examples:[
            KanjiExample(word:"確認", reading:"かくにん", meaning:"confirmation"),
            KanjiExample(word:"確かに", reading:"たしかに", meaning:"certainly")]),
        Kanji(id:"評", meanings:["evaluate","comment"], onyomi:["ヒョウ"], kunyomi:[], level:.N2, strokeCount:12, examples:[
            KanjiExample(word:"評価", reading:"ひょうか", meaning:"evaluation"),
            KanjiExample(word:"批評", reading:"ひひょう", meaning:"criticism / review")]),
        Kanji(id:"設", meanings:["establish","set up"], onyomi:["セツ"], kunyomi:["もう"], level:.N2, strokeCount:11, examples:[
            KanjiExample(word:"設備", reading:"せつび", meaning:"equipment"),
            KanjiExample(word:"設定", reading:"せってい", meaning:"setting / configuration")])
    ]

    // ─────────────────────────────────────────
    // MARK: N1 (representative sample ~50)
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
        Kanji(id:"渉", meanings:["ford","wade","involve"], onyomi:["ショウ"], kunyomi:[], level:.N1, strokeCount:11, examples:[
            KanjiExample(word:"交渉", reading:"こうしょう", meaning:"negotiation"),
            KanjiExample(word:"干渉", reading:"かんしょう", meaning:"interference")]),
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
            KanjiExample(word:"妨害", reading:"ぼうがい", meaning:"obstruction / interference")])
    ]
}
