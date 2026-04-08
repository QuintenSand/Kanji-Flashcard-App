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
    ], onyomi:["ジャク"], kunyomi:["よわ"], level:.N4, strokeCount:10, examples:[
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
    ], onyomi:["ヘン"], kunyomi:["かえ"], level:.N3, strokeCount:7, examples:[
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
    ], onyomi:["セツ"], kunyomi:["もう"], level:.N2, strokeCount:11, examples:[
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
    ], onyomi:["ボウ"], kunyomi:["さまた"], level:.N1, strokeCount:7, examples:[
            KanjiExample(word:"妨げる", reading:"さまたげる", meaning:"to obstruct"),
            KanjiExample(word:"妨害", reading:"ぼうがい", meaning:"obstruction / interference")])
    ]
}
