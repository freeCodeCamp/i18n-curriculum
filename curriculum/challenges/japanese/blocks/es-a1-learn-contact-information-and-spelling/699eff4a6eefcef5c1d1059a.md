---
id: 699eff4a6eefcef5c1d1059a
title: タスク 24
challengeType: 22
dashedName: task-24
lang: es
---
<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

`dominio` という言葉は、ウェブアドレスの主要な部分を指し、通常はメールの`@`の後やウェブサイトの`www`の後に続くセクションです。

メールアドレスやURLを伝えたり確認したりするときによく使われます。例えば：

`El dominio es gmail punto com.` – ドメインは gmail.com です。

`¿Cuál es el dominio?` – ドメインは何ですか？

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

この名詞は、ウェブやメールアドレスの主要な部分を指します。

# --explanation--

`Dominio` は、メールアドレスやウェブサイトのドメイン部分を指す名詞です。

デジタルの連絡先情報をつづったり確認したりするときによく使われます。

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
