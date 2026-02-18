---
id: 6857babdeedee54c6acb3636
title: 任务 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

监视器现在存储在哪里？

## --answers--

在停车场尽头。

### --feedback--

Sarah 没有提到停车场。

---

在 IT 机房内。

### --feedback--

他们早些时候被移出了 IT 房间。

---

在安全性柜台旁边。

### --feedback--

没有提到安全性服务台。

---

就在咖啡机旁边。

## --video-solution--

4

# --explanation--

Sarah 给出明确的指示，最后以 `the coffee machine` 作为引用点。

她解释说，沿着走廊走到底后左转，`monitors` 就位于对面，咖啡机是查找它们时最靠近的可见地标。

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
