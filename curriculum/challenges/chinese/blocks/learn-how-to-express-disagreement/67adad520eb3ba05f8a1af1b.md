---
id: 67adad520eb3ba05f8a1af1b
title: 任务 33
challengeType: 19
dashedName: task-33
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Anna 应该怎么说才能同意 Bob？

## --answers--

`I don't understand.`

### --audio-id--

ENd6da13d0

### --feedback--

这个短语表明了困惑，但 Anna 需要表示同意 Bob 的想法。

---

`That makes sense.`

### --audio-id--

ENc50c4990

## --video-solution--

2

# --explanation--

`That makes sense` 是一种表达同意的自然方式。人们在接受或理解建议时会在对话中使用这个短语。例如：

- **Developer:** `We should optimize the code before adding new features to avoid performance issues.`

- **Manager:** `That makes sense. A slow app will frustrate users.`——此人同意并理解为什么先优化代码是个好主意。

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
