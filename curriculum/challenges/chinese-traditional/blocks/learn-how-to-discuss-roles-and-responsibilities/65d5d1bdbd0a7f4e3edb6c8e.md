---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: 任務 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

聆聽音訊並回答問題。

# --questions--

## --text--

Tom 在問什麼？

## --answers--

如果 Anna 在人力資源部工作

### --feedback--

Tom 的問題特別針對這個人是否曾與 Anna 合作，而不是關於 Anna 的角色。

---

如果 Alice 曾經有與 Anna 合作的經驗。

---

如果你喜歡在人力資源部工作

### --feedback--

問題是關於過去與 Anna 的經驗，而不是對在人力資源部門工作的個人感受。

---

如果 Anna 曾經工作過

### --feedback--

Tom 問題的重點在於監聽器與 Anna 的互動經驗，而非 Anna 的工作經歷。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
