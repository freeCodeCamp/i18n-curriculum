---
id: 67adad520eb3ba05f8a1af1b
title: 任務 33
challengeType: 19
dashedName: task-33
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Anna 應該怎麼說才能同意 Bob？

## --answers--

`I don't understand.`

### --audio-id--

en-b1-67adad520eb3ba05f8a1af1b-SP1

### --feedback--

這句話暗示了困惑，但 Anna 需要表示同意 Bob 的想法。

---

`That makes sense.`

### --audio-id--

en-b1-67adad520eb3ba05f8a1af1b-SP2

## --video-solution--

2

# --explanation--

`That makes sense` 是表示同意的自然用語。人們在接受或理解建議時會在對話中使用這個片語。 例如：

- Person 1：我們應該在為你的程式碼添加新特性之前最佳化程式碼，以避免效率問題。

- 使用者 2：`That makes sense. A slow app will frustrate users.`－這位使用者同意並理解為什麼先優化程式碼是個好主意。

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
