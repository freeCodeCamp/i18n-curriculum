---
id: 67c70abfeb7c6fb8cbd3fed7
title: 任務 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

聆聽音訊並回答以下問題。  

# --questions--

## --text--

Maria 想和 James 討論什麼？  

## --answers--

Bob 的一週排程。  

### --feedback--

Maria 沒有提到 Bob 的排程。  

---

她最近一次與 Bob 的會議。  

---

未來的專案截止日期。  

### --feedback--

Maria 沒有提到截止日期，只有她與 Bob 的會議。  

---

客戶的預算請求。  

### --feedback--

Maria 在這句話中沒有取用客戶端請求。  

## --video-solution--

2  

# --explanation--

`Can we talk about...` 用來介紹一個討論主題。這是一種禮貌地請求討論重要事情的方式。例如：

`Can we talk about the changes to the project timeline?`－這表示講者想討論專案時間表的調整。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
