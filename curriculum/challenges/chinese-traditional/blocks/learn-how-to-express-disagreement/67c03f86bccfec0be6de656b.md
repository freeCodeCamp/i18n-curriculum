---
id: 67c03f86bccfec0be6de656b
title: 任務 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Anna 在傳達什麼？

## --answers--

她完全不同意 Bob 的看法並拒絕他的擔憂。

### --feedback--

Anna 在提出自己的意見之前，先承認了 Bob 的觀點。

---

她理解 Bob 的擔憂，但仍然認為彈性是較好的選項。

---

她不理解 Bob 的擔憂。

### --feedback--

Anna 理解 Bob 的引數。

---

她同意 Bob 的看法並改變了主意。

### --feedback--

Anna 並不完全同意 Bob。

## --video-solution--

2

# --explanation--

Anna 使用 `I see your point, but` 來表示她理解 Bob 的顧慮，同時提出不同的意見。

她相信彈性比堅持使用單一類別是更好的解決方案。

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
