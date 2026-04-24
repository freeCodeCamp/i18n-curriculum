---
id: 680aef568ac1bd591eceb0dc
title: タスク 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

これは、商品、サービス、またはイベントを宣伝するために作られたメッセージやコンテンツを意味する短縮形です。複数形を使ってください。

# --explanation--

`ad`（`advertisement`の略）は、人々の注意を引き、何かを購入したりサービスを利用したり行動を起こしたりするよう促すために作られたコンテンツのことです。広告はソーシャルメディア、ウェブサイト、テレビ、ラジオなどに表示されます。例えば：

- `They launched a new ad campaign for their latest product.` – これは会社が商品への関心を高めるために宣伝コンテンツを作成し共有したことを意味します。

- `We saw a lot of online ads for the holiday sale.` – これはセールに関する多くの宣伝メッセージがウェブサイトやアプリにあったことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
