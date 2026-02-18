---
id: 6857babdeedee54c6acb3636
title: 任務 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

監視器現在儲存在哪裡？

## --answers--

在停車場的盡頭。

### --feedback--

Sarah 沒有提到停車場。

---

在 IT 機房內。

### --feedback--

它們較早前已被移出 IT 室。

---

在保全櫃台旁邊。

### --feedback--

沒有提及安全櫃台。

---

就在咖啡機旁邊。

## --video-solution--

4

# --explanation--

Sarah 給出清楚的指示，最後以 `the coffee machine` 作為參考點。

她解釋說，沿著走廊走到底後左轉，監視器位於對面，咖啡機是找到它們時最接近且可見的地標。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
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
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
