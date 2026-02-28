---
id: 693aebb31ed98f7aea7d1a5d
title: 任务 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

在这个任务中，你将听到 Basti 分享他的完整电话号码，包括国家代码。号码以分组数字的形式朗读。

# --instructions--

听音频，回答下面的问题。 

# --questions--

## --text--

以下哪个是 Basti 的电话号码？

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

最后几位数字不是 Basti 说的。

---

+520 4489 2201

### --feedback--

Basti 说的国家代码不是 520。

---

+502 4498 2201

### --feedback--

中间四位数字有一个小误差。

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`，意思是“我的号码是 +502 4489 2201”。

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
