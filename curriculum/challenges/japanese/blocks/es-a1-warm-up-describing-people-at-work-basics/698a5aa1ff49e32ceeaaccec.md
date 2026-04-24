---
id: 698a5aa1ff49e32ceeaaccec
title: タスク 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

今、カミラはスペイン語で`número de teléfono`（「電話番号」を意味します）と言う練習をしています。

`número`という単語は`u`の文字にアクセント記号があり、`teléfono`という単語は2番目の文字`e`にアクセント記号があることに注意してください。

# --instructions--

音声を聞いて、下に単語を書いてください。

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

この単語はスペイン語で文字通り「数字」を意味します。`u`の文字にアクセント記号を付け、最初の文字を大文字にすることを忘れないでください。

---

`teléfono`

### --feedback--

この単語はスペイン語で文字通り「電話」を意味します。2番目の文字`e`にアクセント記号を付けることを忘れないでください。

# --explanation--

`Número de teléfono`はスペイン語で「電話番号」を意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
