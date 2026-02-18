---
id: 67f36533ffaeffe3ac2dad2b
title: 任務 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Jessica 在解釋什麼？

## --answers--

目前更新的排程發生問題。

### --feedback--

Jessica 正在討論該特性的時機，而不是更新本身的排程。

---

預算追蹤特性將會在下一次更新中推出，而非目前這次。

---

預算追蹤特性已從目前的更新中移除。

### --feedback--

Jessica 沒有提到該特性已被移除。

---

這個特性錯誤地包含在此更新中。

### --feedback--

Jessica 並沒有說該特性是錯誤包含的。

## --video-solution--

2

# --explanation--

Jessica 說，`The budget tracking feature is planned for the next update`，解釋該特性不包含在目前的更新中，但會在下一次更新中添加。

這釐清了關於該特性的時機混淆。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
