---
id: 66bbba46fff0ef451b701bcd
title: 任務 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Sarah 有空跟 Tom 講話嗎？

## --answers--

不，她很忙，不想知道他的問題。

### --feedback--

Sarah 說她不忙。

---

是的，她有空並且想知道問題是什麼。

---

不，她現在不能說話，她有她自己的問題。

### --feedback--

Sarah 提到她不忙。

---

是的，但只有片刻，因為她有她自己的問題。

### --feedback--

Sarah 並不限制時間；她只是說她不忙。

## --video-solution--

2

# --explanation--

莎拉沒有直接說她有空，而是使用否定形式 `I'm not busy` 來強調她有時間幫忙。

這是在英語中提供可用性的一種禮貌且間接的方式，通常用來使對話更為委婉。

她接著說的句子，`What's the problem?`，確認她願意協助並邀請 Tom 說明問題。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
