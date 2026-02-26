---
id: 6939b0e1fac80c2b4fdf8ded
title: 任務 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe b-a-s-t-i. -->

# --description--

在這個任務中，Basti 一個字母一個字母地拼出他的暱稱。

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`b`

### --feedback--

這是 Basti 用來開始拼寫他暱稱的第一個字母 B。

---

`t`

### --feedback--

這個字母位於 `"Basti"` 中的 "s" 之後。

---

`i`

### --feedback--

這是 `"Basti"` 中的最後一個字母。聆聽結尾的母音音。

# --explanation--

Basti 將他的暱稱拼寫為 `b-a-s-t-i`。

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
      "startTimestamp": 22.6,
      "finishTimestamp": 26.74
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
      "finishTime": 5.14,
      "dialogue": {
        "text": "Se escribe b-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.64
    }
  ]
}
```
