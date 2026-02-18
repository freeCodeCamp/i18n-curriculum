---
id: 67e2ae1300a8edcdede767db
title: 任務 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

當有人想要取得資訊或許可時，會使用這個動詞。

---

`about`

### --feedback--

這個介詞連接相關的主題或對象。

# --explanation--

`Ask about` 是指請求與特定主題相關的資訊。例如：

`I asked about the new feature.` – 你想要關於該特性的資訊。 

`Can I ask you about...` 是一種禮貌的方式來開始提問，當你想要獲取資訊或幫助時使用。它表示你正在請求允許討論特定主題。 例如：

`Can I ask you about the project deadline?`－這表示你想討論截止日期並獲得更多細節。  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
