---
id: 678e5a7c4de8c4ccf4ed6ca9
title: 任務 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

這個字表示有相同的意見或達成共識。 

---

`disagree`

### --feedback--

這個字表示持有不同意見或不一致。

# --explanation--

`Agree` 意味著與某人達成共識或持有相同意見。 例如：  

`We both agree that improving security is important。`－這表示你與其他人對安全性有相同的看法。

`Disagree` 意思是有不同的意見或不同意。 例如：  

`Jake and Maria disagree on which software to use。` - 這表示 Jake 和 Maria 對軟體的選擇有不同的意見。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 56.0,
      "finishTimestamp": 58.28
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.28,
      "dialogue": {
        "text": "Okay, let's agree to disagree.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 3.78
    }
  ]
}
```
