---
id: 65d86af6cdfed1fcab11abbe
title: タスク 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` は、安全を守るために設計されたルールや手順に従って行動することを意味します。問題や危険を防ぐために、特に職場など多くのエリアで重要です。

`everyone` の後には、動詞の三人称単数形を使う必要があることを学びました。なぜなら `everyone` はグループ内の各人を個別に扱うからです。

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

これは、各人がその動作を行うことを意味する動詞の単数形です。

---

`security`

### --feedback--

この言葉は、人や場所、物を危険や損害から守ることを意味します。

---

`procedures`

### --feedback--

安全のために守るべき手順やルールのことです。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.80,
      "finishTimestamp": 36.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.76,
      "dialogue": {
        "text": "He also ensures that everyone follows security procedures.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.26
    }
  ]
}
```
