---
id: 65dabf5eb13aae9ff91c40a2
title: 任務 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

片語 `search for` 意指尋找某物或透過探索嘗試找到某物。 例如，`I need to search for my lost keys` 意指尋找鑰匙。

字 `expensive` 描述某物花費很多錢。 例如，`That car is too expensive for me` 意味著那輛車花費很多錢。

`solution` 是問題的答案或修復問題的方法。

`Doesn't/don't have to` 用來表示沒有必要或要求去做某事。

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

這個字表示仔細尋找某物。

---

`for`

### --feedback--

這個介詞用於 `search`，以顯示你正在嘗試尋找的內容。

---

`expensive`

### --feedback--

這個字描述某些花費很多錢的東西。

---

`solutions`

### --feedback--

這些是解決問題的答案或方法。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
