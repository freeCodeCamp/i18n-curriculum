---
id: 678e0cbc0d01a2a5aea8dcec
title: タスク 47
challengeType: 19
dashedName: task-47
lang: en-US
---

<!-- (audio) Jake: I prefer using Visual Studio Code because it's lightweight and has excellent security features. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

なぜジェイクはVisual Studio Codeの使用を好むのでしょうか？

## --answers--

高価で機能が多いからです。

### --feedback--

ジェイクはVisual Studio Codeを好む理由として価格や費用については言及していません。

---

遅くて安全でないからです。

### --feedback--

ジェイクがVisual Studio Codeを好む理由は速度やセキュリティの問題とは関係ありません。

---

使いにくく機能が限られているからです。

### --feedback--

ジェイクはVisual Studio Codeを肯定的に説明しており、使いにくいとか機能が不足しているとは言っていません。

---

軽量で優れたセキュリティ機能があるからです。

## --video-solution--

4

# --explanation--

ジェイクの好みを説明するキーワードに注目してください。

`Lightweight` – これはVisual Studio Codeが多くのシステムリソースを使わないことを意味します。

`Security features` – これはジェイクがツールの潜在的なリスクからの保護機能を重視していることを示しています。

これらのキーワードから、ジェイクがVisual Studio Codeを好むのは軽量で強力なセキュリティ機能があるからだとわかります。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.04,
      "finishTimestamp": 10.54
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 6.5,
      "dialogue": {
        "text": "I prefer using Visual Studio Code because it's lightweight and has excellent security features.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 7
    }
  ]
}
```
