---
id: 6710e0e2cafeeb09e6cb2d8f
title: 任務 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

這是用來形成單數第一人稱 `Past Continuous` 的助動詞。

---

`working`

### --feedback--

這是 `Past Continuous` 中的主要動詞，描述勞動的行為。

---

`were`

### --feedback--

這是用來形成複數第一人稱 `Past Continuous` 的助動詞。

---

`updating`

### --feedback--

這是 `Past Continuous` 中的主要動詞，描述正在進行的改善或現代化某事的動作。

# --explanation--

`Past Continuous` 時態用來描述過去某個特定時間正在進行的動作。當兩個 `Past Continuous` 句子一起使用時，通常描述同時發生的動作或並行進行的動作。  

在這句話中，Linda 正在描述她和她的團隊在整個專案期間持續工作並更新使用者介面。這顯示過去同時發生的兩個動作，為彼此提供背景關係。 例如： 

`While I was preparing the report, they were testing the new features.`－這表示我準備報告的動作和測試新特性的動作同時發生。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
