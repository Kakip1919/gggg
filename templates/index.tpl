<html lang="jp">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../Comn/rokuyo.css?20191209">
    <title>西暦から、旧暦、六曜を計算します！</title>
</head>
<body>

<div class="container">
    <p class="title"><a name="title">西暦から旧暦、六曜を計算！</a></p>
    <div class="nav">
        <div class="nav_border">
            当サイトの目次
        </div>
        <h2 class="nav_heading"><a href="#title">六曜計算 </a></h2>
        <h2 class="nav_heading"><a href="#rokuyo_description">各六曜の概要</h2>
        <ul class="child_li">
            <li><a href="#mhead1" class="nav_list">⇒友引(ともびき)について</a></li>
            <li><a href="#mhead2" class="nav_list">⇒先負(せんまけ)について</a></li>
            <li><a href="#mhead3" class="nav_list">⇒仏滅(ぶつめつ)について</a></li>
            <li><a href="#mhead4" class="nav_list">⇒先勝(せんかち)について</a></li>
            <li><a href="#mhead5" class="nav_list">⇒大安(たいあん)について</a></li>
            <li><a href="#mhead6" class="nav_list">⇒赤口(しゃっこう)について</a></li>
        </ul>
        <h2 class="nav_heading"><a href="#kyureki_description"> 旧暦(きゅうれき)とは</a></h2>
        <h2 class="nav_heading"><a href="#anniv_description">毎日記念日とは？</a></h2>
        <div class="nav_border site_link">
            外部サイトリンク
        </div>
    </div>
    <div class="main_container">
        <form action="controller.php" method="get" class="form-example">
            <div class="form-example">
                <h2>西暦を入力すると、旧暦と六曜、</h2>
                <h3>おまけに毎日記念日を表示します。</h3>
                <h3>下の入力欄に日付を入力してください</h3>
                <label class="subtitle">西暦</label>
                <input maxlength="4" type="tel" name="target_year" class="text_field">

                <label class="subtitle">年</label>
                <input maxlength="2" type="tel" name="target_month" class="text_field">

                <label class="subtitle">月</label>
                <input maxlength="2" type="tel" name="target_day" class="text_field">
                <label class="subtitle">日</label>

                <input type="submit" class="button" value="計算する！">

                {if $validation == 1}
                    <h2 class="error_message">日付を正しく入力してください</h2>
                {elseif $validation == 2}
                    <h2 class="error_message">年を1899年から2101年までの間で入力してください</h2>
                {elseif $validation == 3}
                    <h2 class="error_message">月を1月から12月までの間で入力してください</h2>
                {elseif $validation == 4}
                    <h2 class="error_message">日を入力してください</h2>
                {else}
                    <h1 class="square_background result">旧暦: {$json_csv[1]} 六曜: {$json_csv[2]}</h1>
                    <h1 class="square_background result">{$date}</h1>
                    <h1 class="square_background result anniversary">{$json_csv[0]}</h1>
                {/if}

                <div>
                    <h2 class="section_title">六曜(ろくよう)とは?</h2>
                    <div class="border-box">
                        <p class="sentence">六曜とは暦の中でも有名な暦中(れきちゅう)の一つで、</p>
                        <p class="sentence">「結婚式は大安に」「葬式は友引にしてはいけない」等の因果関係があり、</p>
                        <p class="sentence">結婚式や、葬式、所謂儀式に深く結びついて利用されている。</p>
                    </div>
                </div>
                <div class="index_wrapper">
                    <h2 class="head">目次</h2>
                    <div class="index">
                        <h3 class="index_heading"><a href="#rokuyo_description"><b class="big_round">・</b>各六曜の概要</a>
                        </h3>
                        <ul class="index_li">
                            <li><a href="#mhead1" class="">⇒友引(ともびき)について</a></li>
                            <li><a href="#mhead2" class="">⇒先負(せんまけ)について</a></li>
                            <li><a href="#mhead3" class="">⇒仏滅(ぶつめつ)について</a></li>
                            <li><a href="#mhead4" class="">⇒先勝(せんかち)について</a></li>
                            <li><a href="#mhead6" class="">⇒赤口(しゃっこう)について</a></li>
                        </ul>
                        <h3 class="index_heading"><a href="#kyureki_description"><b class="big_round">・</b>旧暦(きゅうれき)とは？</a>
                        </h3>
                        <h3 class="index_heading"><a href="#anniv_description"><b class="big_round">・</b>毎日記念日とは？</a>
                        </h3>

                    </div>
                </div>
                <h2 class="section_heading"><a name="rokuyo_description">各六曜の概要</a></h2>
                <section class="description">
                    <div class="mini_section">

                        <h3 class="mini_heading"><a name="mhead1">友引(ともびき)について</a></h3>
                        <p class="sentence">友引(ともびき)は、勝負等の決着がつかない</p>
                        <p class="sentence">良くも悪くもないとされている日になります。</p>
                        <p class="sentence">朝と晩は吉、昼は凶と言われています。</p>
                        <p class="sentence">友引の日に葬儀を行うと友が冥土に連れていかれると言われていますので、避けましょう。</p>

                        <h3 class="mini_heading"><a name="mhead2">先負(せんまけ)について</a></h3>
                        <p class="sentence">先負(せんぶ、せんまけ)は、急ぐことを避けましょうという日です。</p>
                        <p class="sentence">争いや、公事等もよくないとされています。</p>
                        <p class="sentence">午前は凶、午後は吉と言われています。</p>
                        <p class="sentence">全てにおいて、平静を保つことが良いとされています。</p>

                        <h3 class="mini_heading"><a name="mhead3">仏滅(ぶつめつ)について</a></h3>
                        <p class="sentence">仏滅(ぶつめつ)は、六曜の中で一番の大凶日です。</p>
                        <p class="sentence">仏滅は、全てにおいて凶であるとされています。</p>
                        <p class="sentence">この日は六曜の中で最も凶の日と考えられ、婚礼や祝儀等を忌む習慣があり、</p>
                        <p class="sentence">この日に儀式(結婚式や、葬式等)を行う人は少ないです。</p>

                        <h3 class="mini_heading"><a name="mhead4">先勝(せんかち)について</a></h3>
                        <p class="sentence">先勝(せんかち、せんしょう)は物事を早く済ませると</p>
                        <p class="sentence">吉だとされる日になります。</p>
                        <p class="sentence">午前は吉、午後は凶と言われています。</p>　
                        <p class="sentence">急ぎの用の処理や、訴訟などに良い日とされています。</p>

                        <h3 class="mini_heading"><a name="mhead5">大安(たいあん)について</a></h3>
                        <p class="sentence">大安(たいあん)は、進んで行うことが吉と言われている日になります。</p>
                        <p class="sentence">六曜の中で一番良い日とされています。</p>　
                        <p class="sentence">大安日だと成功しない日はないと言われるほどです。</p>
                        <p class="sentence">安全に物事を進めたい日等を大安に設定すると良いです。</p>

                        <h3 class="mini_heading"><a name="mhead6">赤口(しゃっこう)について</a></h3>
                        <p class="sentence">赤口(しゃっこう、しゃっく)は牛の刻(午前１１時ごろから、午後１時ごろまで)の間だけ吉になり、牛の刻以外の時間は全て凶になります。</p>
                        <p class="sentence">この日は 「赤」 という字が付くので、火の元や、鋭利な物などに気を付けましょう。</p>
                        <p class="sentence">「死」などを連想されるものに注意する日とされています。</p>
                    </div>
                </section>

                <h2 class="section_heading"><a name="kyureki_description">旧暦(きゅうれき)とは？</h2>
                <p class="sentence">旧暦とは、改暦があった場合のそれ以前に使われていた暦法(計算の規則)のことです。</p>
                <p class="sentence">現在の暦法は、太陽暦(グレゴリオ暦)と呼ばれているものです。</p>
                <p class="sentence">太陽暦が採用されたのは明治5年(1872年)で、それ以前に使われていた暦法が旧暦ということになります。</p>

                <h2 class="section_heading"><a name="anniv_description">毎日記念日とは？</a></h2>
                <p class="sentence">365日、毎日に記念日が存在しています。</p>
                <p class="sentence">毎日記念日を知るだけで毎日が特別な日になるでしょう。</p>
                <p class="sentence">下記では毎日記念日の定義を記載しています。</p>
                <p class="sentence">--wikiより抜粋--</p>
                <p class="sentence">・元日、建国記念の日などの祝日</p>
                <p class="sentence">・節分や、七夕などの伝統的な祭事ごと</p>
                <p class="sentence">・個人的な記念日(誕生日や、結婚記念日など)</p>
                <p class="sentence">・一地方でのみ有効となるもの(市政記念日、創立記念日等)</p>
                <p class="sentence">・企業や、業界団体等が商品販売の目的で制定したような記念日</p>
            </div>
            <footer class="block"></footer>
        </form>
    </div>
</div>
</body>
</html>
