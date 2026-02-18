---
id: 660684bfc24bf48cfaaf9cfa
title: 任務 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

「`Give it a shot`」意思是嘗試做某事。這就像說「`Try it`」。

例如，如果你的朋友因為覺得可能太困難而猶豫是否加入程式設計類別，你可以說 `Why not give it a shot? You might enjoy it more than you think.` 來鼓勵他們嘗試加入這個類別。

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

它是 `I will` 的縮寫。Sophie 正在表達她決定嘗試 Brian 建議的事情。

---

`shot`

### --feedback--

在這個背景關係中，它表示嘗試做某事。Sophie 說她會嘗試 Brian 推薦的內容。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
