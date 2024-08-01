describe "giants" do
  before(:all) { @giants = NpbPlayersDirectory::Giants.new }

  context "list_name" do
    expected_response_ja = [
      "大勢", "西舘 勇陽", "菅野 智之", "山﨑 伊織", "戸郷 翔征", "今村 信貴", "高橋 礼", "グリフィン", "近藤 大亮", "赤星 優志", "鈴木 康平", "ケラー", "馬場 皐輔", "中川 皓太", "畠 世周", "又木 鉄平", "森田 駿哉", "田中 千晴", "バルドナード", "伊藤 優輔", "高梨 雄平", "直江 大輔", "石田 隼都", "髙橋 優貴", "船迫 大雅", "横川 凱", "泉 圭輔", "大江 竜聖", "メンデス", "平内 龍太", "代木 大和", "山田 龍聖", "堀田 賢慎", "松井 颯", "菊地 大稀", "井上 温大", "京本 眞", "笠島 尚樹", "三浦 克也", "川嵜 陽仁", "千葉 隆広", "木下 幹也", "園田 純規", "戸田 懐生", "小沼 健太", "田村 朋輝", "吉村 優聖歩", "富田 龍", "山﨑 友輔", "森本 哲星", "ルシアーノ", "黄 錦豪", "鴨打 瑛二", "花田 侑樹", "小林 誠司", "大城 卓三", "岸田 行倫", "郡 拓也", "山瀬 慎之助", "喜多 隆介", "坂本 勇人", "大津 綾也", "亀田 啓太", "前田 研輝", "萩原 哲", "湯浅 大", "増田 大輝", "吉川 尚輝", "門脇 誠", "坂本 勇人", "岡本 和真", "泉口 友汰", "モンテス", "中山 礼都", "秋広 優人", "菊田 拡和", "増田 陸", "中田 歩夢", "ウレーニャ", "加藤 廉", "村山 源", "田上 優弥", "宇都宮 葵星", "相澤 白虎", "岡本 大翔", "北村 流音", "長野 久義", "丸 佳浩", "萩尾 匡也", "梶谷 隆幸", "立岡 宗一郎", "岡田 悠希", "ヘルナンデス", "重信 慎之介", "佐々木 俊輔", "オコエ 瑠偉", "浅野 翔吾", "若林 楽人", "鈴木 大和", "笹原 操希", "ティマ", "三塚 琉生", "平山 功太", "大城 元", "舟越 秀虎"
    ]
    # noinspection SpellCheckingInspection
    expected_response_en = [
      "TAISEI OTA", "YUHI NISHIDATE", "TOMOYUKI SUGANO", "IORI YAMASAKI", "SHOSEI TOGO", "NOBUTAKA IMAMURA", "REI TAKAHASHI", "FOSTER GRIFFIN", "TAISUKE KONDOH", "YUJI AKAHOSHI", "KOHEI SUZUKI", "KYLE KELLER", "KOSUKE BABA", "KOTA NAKAGAWA", "SEISHU HATAKE", "TEPPEI MATAKI", "SHUNYA MORITA", "CHIHARU TANAKA", "ALBERTO BALDONADO", "YUSUKE ITOH", "YUHEI TAKANASHI", "DAISUKE NAOE", "HAYATO ISHITA", "YUKI TAKAHASHI", "HIROMASA FUNABASAMA", "KAI YOKOGAWA", "KEISUKE IZUMI", "RYUSEI OHE", "YOHANDER MENDEZ", "RYUTA HEINAI", "YAMATO SHIROKI", "RYUSEI YAMADA", "KENSHIN HOTTA", "HAYATE MATSUI", "TAIKI KIKUCHI", "HARUTO INOUE", "MAKOTO KYOMOTO", "NAOKI KASASHIMA", "KATSUNARI MIURA", "HARUTO KAWASAKI", "TAKAHIRO CHIBA", "MOTOYA KINOSHITA", "ATSUKI SONODA", "NATSUKI TODA", "KENTA ONUMA", "TOMOKI TAMURA", "YUSEFU YOSHIMURA", "RYU TOMIDA", "YUSUKE YAMASAKI", "TESSEI MORIMOTO", "ELVIS LUCIANO", "CHIN-HAO HUANG", "EIJI KAMOUCHI", "YUKI HANADA", "SEIJI KOBAYASHI", "TAKUMI OHSHIRO", "YUKINORI KISHIDA", "TAKUYA KOHRI", "SHINNOSUKE YAMASE", "RYUSUKE KITA", "HAYATO SAKAMOTO", "RYOYA OHTSU", "KEITA KAMEDA", "KENKI MAEDA", "TETSU HAGIWARA", "DAI YUASA", "DAIKI MASUDA", "NAOKI YOSHIKAWA", "MAKOTO KADOWAKI", "HAYATO SAKAMOTO", "KAZUMA OKAMOTO", "YUTA IZUGUCHI", "COCO MONTES", "RAITO NAKAYAMA", "YUTO AKIHIRO", "HIROKAZU KIKUTA", "RIKU MASUDA", "AYUMU NAKATA", "ESTAMY URENA", "REN KATOH", "GEN MURAYAMA", "YUYA TANOUE", "KISARA UTSUNOMIYA", "HAKUTO AIZAWA", "HIROTO OKAMOTO", "RIO KITAMURA", "HISAYOSHI CHONO", "YOSHIHIRO MARU", "MASAYA HAGIO", "TAKAYUKI KAJITANI", "SOICHIRO TATEOKA", "YUKI OKADA", "ELIER HERNANDEZ", "SHINNOSUKE SHIGENOBU", "SHUNSUKE SASAKI", "LOUIS OKOYE", "SHOGO ASANO", "GAKUTO WAKABAYASHI", "YAMATO SUZUKI", "MISAKI SASAHARA", "JULIAN TIMA", "RUI MITSUKA", "KOTA HIRAYAMA", "GEN OHSHIRO", "HIDETORA FUNAKOSHI"
    ]
    context "引数無しで呼び出し" do
      it "ジャイアンツの選手名を日本語で返すこと" do
        expect(@giants.list_name).to eq expected_response_ja
      end
    end
    context "引数enで呼び出し" do
      it "ジャイアンツの選手名を英語で返すこと" do
        expect(@giants.list_name(:en)).to eq expected_response_en
      end
    end
    context "引数を適当な値で呼び出し" do
      it "ジャイアンツの選手名を英語で返すこと" do
        expect(@giants.list_name(:test)).to eq expected_response_en
      end
    end
  end
  context "get_by_uniform_number" do
    context "引数に18を指定" do
      it "「菅野 智之」が返ること" do
        expect(@giants.name_by_uniform_number("18")).to(eq "菅野 智之")
      end
    end
    context "引数に50を指定" do
      it "「山本祐大」が返ること" do
        expect(@giants.name_by_uniform_number("50")).to(eq "オコエ 瑠偉")
      end
    end
    context "引数に1000を指定" do
      it "選手名が返らないこと" do
        expect(@giants.name_by_uniform_number("1000")).to(eq "No player found for number 1000")
      end
    end
  end
end
