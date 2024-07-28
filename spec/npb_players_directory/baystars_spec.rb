describe "baystars" do
  before(:all) { @baystars = NpbPlayersDirectory::Baystars.new }

  context "list_name" do
    expected_response_ja = [
      "東 克樹", "伊勢 大夢", "石田 健大", "徳山 壮磨", "大貫 晋一", "三嶋 一輝", "小園 健太", "山﨑 康晃", "坂本 裕哉", "入江 大生", "吉野 光樹", "濵口 遥大", "上茶谷 大河", "三浦 銀二", "松本 凌人", "橋本 達弥", "森下 瑠大", "森 唯斗", "松本 隆之介", "佐々木 千隼", "A.ジャクソン", "深沢 鳳介", "森原 康平", "石川 達也", "京山 将弥", "J.B.ウェンデルケン", "中川 颯", "石田 裕太郎", "髙田 琢登", "平良 拳太郎", "R.ウィック", "中川 虎大", "宮城 滝太", "A.ケイ", "堀岡 隼人", "Y.ディアス", "草野 陽斗", "清水 麻成", "W. モロン", "渡辺 明貴", "H.マルセリーノ", "今野 瑠斗", "A.マルティネス", "庄司 陽斗", "松尾 汐恩", "戸柱 恭孝", "伊藤 光", "益子 京右", "山本 祐大", "東妻 純平", "上甲 凌大", "九鬼 隆平", "近藤 大雅", "林 琢真", "牧 秀悟", "T.オースティン", "森 敬斗", "大和", "柴田 竜拓", "西浦 直亨", "石上 泰輝", "宮﨑 敏郎", "井上 絢登", "知野 直人", "西巻 賢二", "京田 陽太", "M.フォード", "蓮", "小笠原 蒼", "粟飯原 龍之介", "小深田 大地", "高見澤 郁魅", "大田 泰示", "桑原 将志", "度会 隆輝", "佐野 恵太", "神里 和毅", "筒香 嘉智", "勝又 温史", "武田 陸玖", "楠本 泰史", "梶原 昂希", "蝦名 達夫", "関根 大気", "村川 凪"
    ]
    expected_response_en = [
      "KATSUKI AZUMA", "HIROMU ISE", "KENTA ISHIDA", "SOUMA TOKUYAMA", "SHINICHI OHNUKI", "KAZUKI MISHIMA", "KENTA KOZONO", "YASUAKI YAMASAKI", "YUYA SAKAMOTO", "TAISEI IRIE", "TERUKI YOSHINO", "HARUHIRO HAMAGUCHI", "TAIGA KAMICHATANI", "GINJI MIURA", "RYOTO MATSUMOTO", "TATSUYA HASHIMOTO", "RYUDAI MORISHITA", "YUITO MORI", "RYUNOSUKE MATSUMOTO", "CHIHAYA SASAKI", "ANDRE JACKSON", "OSUKE FUKAZAWA", "KOHEI MORIHARA", "TATSUYA ISHIKAWA", "MASAYA KYOYAMA", "J.B. WENDELKEN", "HAYATE NAKAGAWA", "YUTARO ISHIDA", "TAKUTO TAKADA", "KENTARO TAIRA", "ROWAN WICK", "KOH NAKAGAWA", "DAITA MIYAGI", "ANTHONY KAY", "HAYATO HORIOKA", "YOFREC DIAZ", "HARUTO KUSANO", "MANATO SHIMIZU", "WILNY MORON", "AKI WATANABE", "HANSEL MARCELINO", "RYUTO KONNO", "ALEXANDER MARTINEZ", "HARUTO SHOJI", "SHION MATSUO", "YASUTAKA TOBASHIRA", "HIKARU ITOH", "KYOSUKE MASHIKO", "YUUDAI YAMAMOTO", "JUNPEI AZUMA", "RYOTA JOKO", "RYUHEI KUKI", "TAIGA KONDO", "TAKUMA HAYASHI", "SHUGO MAKI", "TYLER AUSTIN", "KEITO MORI", "YAMATO", "TATSUHIRO SHIBATA", "NAOMICHI NISHIURA", "TAIKI ISHIKAMI", "TOSHIRO MIYAZAKI", "KENTO INOUE", "NAOTO CHINO", "KENJI NISHIMAKI", "YOTA KYODA", "MIKE FORD", "REN", "SOU OGASAWARA", "RYUNOSUKE AIBARA", "DAICHI KOBUKATA", "IKUMI TAKAMIZAWA", "TAISHI OHTA", "MASAYUKI KUWAHARA", "RYUKI WATARAI", "KEITA SANO", "KAZUKI KAMIZATO", "YOSHITOMO TSUTSUGOH", "ATSUSHI KATSUMATA", "RIKU TAKEDA", "TAISHI KUSUMOTO", "KOUKI KAJIWARA", "TATSUO EBINA", "TAIKI SEKINE", "NAGI MURAKAWA"
    ]
    context "引数無しで呼び出し" do
      it "ベイスターズの選手名を日本語で返すこと" do
        expect(@baystars.list_name).to eq expected_response_ja
      end
    end
    context "引数enで呼び出し" do
      it "ベイスターズの選手名を英語で返すこと" do
        expect(@baystars.list_name(:en)).to eq expected_response_en
      end
    end
    context "引数を適当な値で呼び出し" do
      it "ベイスターズの選手名を英語で返すこと" do
        expect(@baystars.list_name(:test)).to eq expected_response_en
      end
    end
  end
  context "get_by_uniform_number" do
    context "引数に11を指定" do
      it "「東克樹」が返ること" do
        expect(@baystars.name_by_uniform_number(11)).to(eq "東 克樹")
      end
    end
    context "引数に50を指定" do
      it "「山本祐大」が返ること" do
        expect(@baystars.name_by_uniform_number(50)).to(eq "山本 祐大")
      end
    end
    context "引数に1000を指定" do
      it "選手名が返らないこと" do
        expect(@baystars.name_by_uniform_number(1000)).to(eq "No player found for number 1000")
      end
    end
  end
end
