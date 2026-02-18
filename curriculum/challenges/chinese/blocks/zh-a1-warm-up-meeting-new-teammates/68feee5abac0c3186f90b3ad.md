---
id: 68feee5abac0c3186f90b3ad
title: 任务 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

哪个选项是王华所说内容的正确拼音？

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

第一个音节的声调与你在音频中听到的不匹配。

---

`mín zi`

### --feedback--

第一个音节的韵尾不是她说的。

---

`míng zhī`

### --feedback--

第二个音节的声母与你在音频中听到的不同。

## --video-solution--

1

# --explanation--

王华正在说 `míng zi`。第一个音节有一个鼻韵尾 `ing` 和一个上升调。第二个音节是一个完整音节，带有轻声，发音轻柔。

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
