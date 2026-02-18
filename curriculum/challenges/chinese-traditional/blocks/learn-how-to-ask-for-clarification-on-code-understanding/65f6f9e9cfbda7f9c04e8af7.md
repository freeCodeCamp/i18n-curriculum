---
id: 65f6f9e9cfbda7f9c04e8af7
title: 任務 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

片語 `by the end of it` 在英文中常用來指涉一個處理程序或時間段的結束或最後零件。它暗示在某個活動完成時，將會達成特定的結果或理解。

# --questions--

## --text--

在對話窗中，Brian 說的 `by the end of it` 是什麼意思？

## --answers--

他們將停止調查。

### --feedback--

這句話是關於達成結論，而不一定是停止該活動。

---

他們將啟動另一個活動。

### --feedback--

Brian 是在取用目前調查的結束，而不是開始新的事情。

---

他們將會休息。

### --feedback--

該片語著重於在處理程序結束時達成共識，而非休息。

---

調查後，他們會對情況有更清楚的了解。

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
