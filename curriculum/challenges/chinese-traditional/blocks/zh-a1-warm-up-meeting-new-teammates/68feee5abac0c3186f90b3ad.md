---
id: 68feee5abac0c3186f90b3ad
title: 任務 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

哪個選項是王華所說內容的正確拼音？

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

第一個音節的聲調與你在 `audio` 中聽到的不符。

---

`mín zi`

### --feedback--

第一個音節的韻尾不是她所說的。

---

`míng zhī`

### --feedback--

第二個音節的聲母與你在音訊中聽到的不同。

## --video-solution--

1

# --explanation--

王華正在說 `míng zi`。第一個音節有鼻音韻尾 `ing` 和升調。第二個音節是一個完整音節，帶有輕聲，發音輕柔。

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
