#  課題02

## 作成日
2023年6月12日

## 使い方（課題01をやっている学生は2を飛ばす）
1. ターミナルを起動する
2. `mkdir ~/Documents/iOSPractice`と入力して新しいフォルダを作成する
3. `cd ~/Documents/iOSPractice`と入力してディレクトリを移動する
4. `git clone https://github.com/MaskerDog/Practice002.git`を実行してリポジトリをローカルにクローンする
5. `open Practice002/Practice001.xcodeproj/`でプロジェクトを開く
6. シミュレーターを起動する
7. 以下の画面が表示されることを確認する

<kbd><img width="256" alt="image" src="https://github.com/MaskerDog/Practice002/assets/37284851/38cc347a-2fba-4552-b894-2dc20a8409f6"></kbd>


## 目的
1. 文字の大きさ、太さ、色を変えられるようになる
2. VStack、HStackに慣れる


## やること1

まず模写をする。  
ContentViewを次のように修正をする。

中括弧の位置に注意をする。  
中括弧はハンバーガーのようなもの。きちんと包んであげないと具が落ちる。  

これはAさんとBさんの朝の挨拶である。
Aさんは丸文字（かわいらしい）、Bさんはセリフ体（高級感ある感じ）で話している。

```Swift
struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                Text("Good Morning!")
                    .font(.system(size: 20, weight: .black, design: .rounded))
                    .foregroundColor(.indigo)
            }
            
            HStack {
                Text("Hey, how's it going?")
                    .font(.system(size: 20, weight: .bold, design: .serif))
                    .foregroundColor(.brown)
                Image(systemName: "person")
            }
            
            Text("Doing great, thanks!")
                .font(.system(size: 20, weight: .black, design: .rounded))
                .foregroundColor(.indigo)
        }
    }
}
```

<kbd><img width="221" alt="image" src="https://github.com/MaskerDog/Practice002/assets/37284851/6628cc7d-0bc8-40f2-b85d-b3c9894fb928"></kbd>


## やること2

3番目のセリフ"Doing great, thanks!"は1番目と同じ人物のセリフである。
1番目のように、テキストの左側に人物のアイコンを追加する。

* ImageとTextをHStackが包み込むようなイメージで書く

<kbd><img width="262" alt="image" src="https://github.com/MaskerDog/Practice002/assets/37284851/3d9e27e3-3055-4b72-a7ce-e2934a9e0c68"></kbd>


## やること3

1番目の  
`font(.system(size: 20, weight: .black, design: .rounded)`  
のsizeの数値を20以上の大きさに変える。変化がわかったら、20以下の数値にも変えてみる。  

weightの値を`.ultraLight`に変えてみる。`.black`との違いを見る。  
その後、`.regular`に変える。`.`を打つと様々な太さの候補が出るため、色々選んで違いを見る。

<kbd><img width="245" alt="image" src="https://github.com/MaskerDog/Practice002/assets/37284851/60264af1-8bf2-4d52-a579-667c7e07c61f"></kbd>

## やること4

`.foregroundColor`は設定したViewの描画の色を変えることができる。  
今のままでは人物のアイコンには色がついていない。

```Swift
            HStack {
                Image(systemName: "person.fill")
                    .foregroundColor(.indigo)
                Text("Good Morning!")
                    .font(.system(size: 20, weight: .black, design: .rounded))
                    .foregroundColor(.indigo)
            }
```

と書けば良いことはわかるが、HStack全体の色を変更するにはどうしたらいいか。
`foregroundColor`をHStackにつけて人物のアイコンの色とテキストを同じ色にする。

<kbd><img width="229" alt="image" src="https://github.com/MaskerDog/Practice002/assets/37284851/2019a222-59c2-4f7f-9c76-ef855ef432d3"></kbd>



## やること5

`VStack`を`VStack(spacing: 20)`に変更するとどのような変化が生じたか。
変化を確認し、`spacing: 20`の値を他の値に変更して、**想像通りの結果になったか** 確認をする。
