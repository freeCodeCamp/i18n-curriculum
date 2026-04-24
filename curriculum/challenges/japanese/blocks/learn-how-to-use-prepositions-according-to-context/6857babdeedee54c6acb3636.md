---
id: 6857babdeedee54c6acb3636
title: タスク 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

モニターは今どこに保管されていますか？

## --answers--

駐車場の端です。

### --feedback--

サラは駐車場については言及していません。

---

ITルームの中です。

### --feedback--

モニターは以前にITルームから移動されました。

---

警備デスクの隣です。

### --feedback--

警備デスクについての言及はありません。

---

コーヒーマシンのすぐ近くです。

## --video-solution--

4

# --explanation--

サラは明確な道順を示し、参照点として`the coffee machine`を挙げています。

廊下をまっすぐ進み、休憩エリアで左に曲がると、モニターはその向かい側に保管されていると説明しているため、コーヒーマシンがモニターを見つけるための最も近い目印となっています。

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
