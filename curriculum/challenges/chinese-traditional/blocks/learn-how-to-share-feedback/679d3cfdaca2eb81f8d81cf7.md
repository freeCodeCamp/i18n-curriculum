---
id: 679d3cfdaca2eb81f8d81cf7
title: 任務 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

瑪麗亞正在請詹姆斯做什麼？

## --answers--

立即修正問題。

### --feedback--

Maria 並沒有要求 James 立刻修正這個問題。

---

向客戶回報此問題。

### --feedback--

Maria 沒有提到通知客戶端。

---

為了調查問題。

---

暫時忽略此問題。

### --feedback--

Maria 並沒有要求 James 忽略這個問題。

## --video-solution--

3

# --explanation--

`Can` 通常用來以非正式方式禮貌地請求某人做某事。例如：

`Can you send me the report by noon?`－這是一種禮貌地請求某人寄送報告的方式。

在這個對話窗中，Maria 正在請求 James 調查這個問題。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
