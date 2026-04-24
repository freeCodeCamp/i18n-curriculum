---
id: 68eff70d0ade1c408ecbfeb4
title: タスク 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

文字 `d` は `de` と呼ばれます。

単語の最初や `l` または `n` の後では、その音は強くなり、単語 `dos`（「two」）のようになります。しかし、母音の間ではより柔らかくなり、単語 `idea`（「idea」）のようになります。

例として `doctor`（「doctor」）があります。

# --instructions--

音声を聞いて、下の空欄に文字を書いてください。

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

これはアルファベットの4番目の文字です。

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
