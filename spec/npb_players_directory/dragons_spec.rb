describe "dragons" do
  before(:all) { @dragons = NpbPlayersDirectory::Dragons.new }

  context "list_name" do
    expected_response_ja = [
      "根尾 昂", "小笠原 慎之介", "田島 慎二", "橋本 侑樹", "草加 勝", "岩嵜 翔", "柳 裕也", "梅津 晃大", "髙橋 宏斗", "涌井 秀章", "大野 雄大", "福谷 浩司", "石森 大誠", "森 博人", "仲地 礼亜", "祖父江 大輔", "福 敬登", "福田 幸之介", "松葉 貴大", "勝野 昌慶", "梅野 雄吾", "砂田 毅樹", "土生 翔太", "清水 達也", "藤嶋 健人", "齋藤 綱記", "福島 章太", "上田 洸太朗", "松木平 優太", "松山 晋也", "ウンベルト・メヒア", "ライデル・マルティネス", "マイケル・フェリス", "加藤 竜馬", "竹内 龍臣", "フランク・アルバレス", "加藤 翼", "垣越 建伸", "石川 翔", "岡田 俊哉", "野中 天翔", "森山 暁生", "近藤 廉", "菊田 翔友", "木下 拓哉", "宇佐見 真吾", "味谷 大誠", "加藤 匠馬", "山浅 龍之介", "石橋 康太", "日渡 騰輝", "田中 幹也", "高橋 周平", "村松 開人", "中田 翔", "中島 宏之", "石川 昂弥", "津田 啓史", "辻本 倫太郎", "石垣 雅海", "龍空（土田龍空）", "山本 泰寛", "ダヤン・ビシエド", "福永 裕基", "クリスチャン・ロドリゲス", "樋口 正修", "オルランド・カリステ", "星野 真生", "川上 理偉", "尾田 剛樹", "岡林 勇希", "鵜飼 航丞", "大島 洋平", "三好 大倫", "濱 将乃介", "ブライト 健太", "川越 誠司", "上林 誠知", "加藤 翔平", "後藤 駿太", "細川 成也", "板山 祐太郎", "アレックス・ディカーソン", "福元 悠真", "カルロス・モニエル"
    ]

    # noinspection SpellCheckingInspection
    expected_response_en = [
      "AKIRA NEO", "SHINNOSUKE OGASAWARA", "SHINJI TAJIMA", "YUKI HASHIMOTO", "SHO KUSAKA", "SHO IWASAKI", "YUYA YANAGI", "KODAI UMETSU", "HIROTO TAKAHASHI", "HIDEAKI WAKUI", "YUDAI OHNO", "KOJI FUKUTANI", "TAISEI ISHIMORI", "HIROTO MORI", "REIA NAKACHI", "DAISUKE SOBUE", "HIROTO FUKU", "KONOSUKE FUKUDA", "TAKAHIRO MATSUBA", "AKIYOSHI KATSUNO", "YUGO UMENO", "YOSHIKI SUNADA", "SHOHTA HABU", "TATSUYA SHIMIZU", "KENTO FUJISHIMA", "KOHKI SAITOH", "SHOTA FUKUSHIMA", "KOTARO UEDA", "YUTA MATSUKIHIRA", "SHINYA MATSUYAMA", "HUMBERTO MEJIA", "RAIDEL MARTINEZ", "MICHAEL FELIZ", "RYUMA KATO", "RYUSHIN TAKEUCHI", "FRANK ALVAREZ", "TSUBASA KATO", "KENSHIN KAKIGOSHI", "SHO ISHIKAWA", "TOSHIYA OKADA", "TENTO NONAKA", "AKIO MORIYAMA", "REN KONDO", "TOWA KIKUTA", "TAKUYA KINOSHITA", "SHINGO USAMI", "TAISEI MIYA", "TAKUMA KATOH", "RYUNOSUKE YAMAASA", "KOTA ISHIBASHI", "TOUKI HIWATARI", "MIKIYA TANAKA", "SHUHEI TAKAHASHI", "KAITO MURAMATSU", "SHO NAKATA", "HIROYUKI NAKAJIMA", "TAKAYA ISHIKAWA", "KEISHI TSUDA", "RINTARO TSUJIMOTO", "MASAMI ISHIGAKI", "RYUKU TSUCHIDA", "YASUHIRO YAMAMOTO", "DAYAN VICIEDO", "HIROKI FUKUNAGA", "CHRISTIAN RODRIGUEZ", "SEISHU HIGUCHI", "ORLANDO CALIXTE", "MAO HOSHINO", "RII KAWAKAMI", "GOUKI ODA", "YUKI OKABAYASHI", "KOSUKE UKAI", "YOHEI OHSHIMA", "HIRONORI MIYOSHI", "SHONOSUKE HAMA", "KENTA BRIGHT", "SEIJI KAWAGOE", "SEIJI UEBAYASHI", "SHOHEI KATOH", "SHUNTA GOTOH", "SEIYA HOSOKAWA", "YUTARO ITAYAMA", "ALEX DICKERSON", "YUMA FUKUMOTO", "CARLOS MONIER"
    ]

    context "引数無しで呼び出し" do
      it "ドラゴンズの選手名を日本語で返すこと" do
        expect(@dragons.list_name).to eq expected_response_ja
      end
    end
    context "引数enで呼び出し" do
      it "ドラゴンズの選手名を英語で返すこと" do
        expect(@dragons.list_name(:en)).to eq expected_response_en
      end
    end
    context "引数を適当な値で呼び出し" do
      it "ドラゴンズの選手名を英語で返すこと" do
        expect(@dragons.list_name(:test)).to eq expected_response_en
      end
    end
  end
  context "get_by_uniform_number" do
    context "引数に18を指定" do
      it "「梅津 晃大」が返ること" do
        expect(@dragons.name_by_uniform_number("18")).to(eq "梅津 晃大")
      end
    end
    context "引数に50を指定" do
      it "「清水 達也」が返ること" do
        expect(@dragons.name_by_uniform_number("50")).to(eq "清水 達也")
      end
    end
    context "引数に1000を指定" do
      it "選手名が返らないこと" do
        expect(@dragons.name_by_uniform_number("1000")).to(eq "No player found for number 1000")
      end
    end
  end
end
