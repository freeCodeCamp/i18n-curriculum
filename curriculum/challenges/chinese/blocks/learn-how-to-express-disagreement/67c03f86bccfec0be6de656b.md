---
id: 67c03f86bccfec0be6de656b
title: 任务 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Anna 在传达什么？

## --answers--

她完全不同意 Bob 的观点并拒绝他的担忧。

### --feedback--

Anna 在发表自己的观点之前，认可了 Bob 的观点。

---

她理解 Bob 的担忧，但仍然认为灵活性是更好的选项。

---

她不理解 Bob 的担忧。

### --feedback--

Anna 理解 Bob 的参数。

---

她同意 Bob 的观点并改变了主意。

### --feedback--

Anna 并不完全同意 Bob。

## --video-solution--

2

# --explanation--

Anna 使用 `I see your point, but` 来表示她理解 Bob 的担忧，同时提出不同的观点。

她认为灵活性比坚持单一类别是更好的方案。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
