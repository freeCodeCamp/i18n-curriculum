---
id: 67baf3ed288e8b06f4ab0dfb
title: 任務 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

這兩個字合起來指涉同事間的團結與合作感。第一個字指的是一個共同工作的群組，第二個字則與共同的熱忱或動力有關。

---

`problem-solving`

### --feedback--  

這個複合字指的是尋找挑戰解決方案的處理程序。第一個零件指的是需要修正的問題，第二個零件是一個表示尋找解決方案的動詞。請記得在兩個零件之間使用 `-`。

# --explanation--

David 認為在辦公室工作有助於強化 `team spirit`（同事間的連結與團結感）並提升 `problem-solving`（更高效地尋找挑戰的解決方案）。

他主張身處同一實體的空間讓員工更容易合作並互相支援。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
