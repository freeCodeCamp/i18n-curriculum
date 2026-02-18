---
id: 68da8dffcffd794e83de9d6c
title: 任务 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

陈娜对一群人说什么来打招呼？

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

这是对一个人的问候，但陈娜是在向多人问候。

---

`您们好 (nín men hǎo)`

### --feedback--

此 `form` 在中文中不是标准形式。

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

这也意味着 "Hello, everyone"，但陈娜使用了不同的短语。

## --video-solution--

3

# --explanation--

问题是在问陈娜对**一群人**说了什么来打招呼。

`你好 (nǐ hǎo)` 是对一个人的问候，而 `您好 (nín hǎo)` 是对一个人的礼貌问候。`您们好 (nín men hǎo)` 不是中文标准用法；`您 (nín)` 是礼貌的单数形式，通常不用于复数。

向一组人打招呼的正确短语是 `你们好 (nǐ men hǎo)`，这是说“hello, everyone”的常用方式。`大家好 (dà jiā hǎo)` 是另一种向一组人打招呼的方式，你会随着学习进展而掌握。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
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
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
