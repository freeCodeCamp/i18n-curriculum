---
id: 67adad520eb3ba05f8a1af1b
title: タスク33
challengeType: 19
dashedName: task-33
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ボブに同意するためにアンナは何と言うべきでしょうか？

## --answers--

`I don't understand.`

### --audio-id--

ENd6da13d0

### --feedback--

このフレーズは混乱を示唆していますが、アンナはボブの考えに同意する必要があります。

---

`That makes sense.`

### --audio-id--

ENc50c4990

## --video-solution--

2

# --explanation--

`That makes sense` は同意を示す自然な表現です。このフレーズは提案を受け入れたり理解したりするときの会話でよく使われます。例えば：

- **開発者:** `We should optimize the code before adding new features to avoid performance issues.`

- **マネージャー:** `That makes sense. A slow app will frustrate users.` - この人はコードを最初に最適化することが良い考えだと理解し、同意しています。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 52,
      "finishTimestamp": 58.24
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.54,
      "dialogue": {
        "text": "So maybe we should focus on both.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 2.54,
      "finishTime": 7.24,
      "dialogue": {
        "text": "Find a balance between comfort and technology to ensure everyone has what they need.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.74
    }
  ]
}
```
