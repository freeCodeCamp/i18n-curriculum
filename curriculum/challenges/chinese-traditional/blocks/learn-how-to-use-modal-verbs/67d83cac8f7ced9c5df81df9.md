---
id: 67d83cac8f7ced9c5df81df9
title: 任務 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

這個情態動詞表達對過去 `event` 的可能性或不確定性。

---

`have taken`

### --feedback--

這個動詞是 `Past Perfect` 形式，用來談論過去可能發生的事情。使用兩個字。

# --explanation--  

`Might` 表示可能性。  

`Have taken` 是 `take` 的 `Past Perfect` 形式，用來談論一個可能發生過的過去動作。例如：

`The attacker might have taken sensitive files.`－你不確定，但這是有可能的。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
