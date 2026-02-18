---
id: 66c8fb021dcfcb767dfec33a
title: 任务 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

下面哪个语句是正确的？

## --answers--

他们以前从未修复过类似的问题。

### --feedback--

考虑琳达是否提到过类似问题的任何经验。

---

他们已经在另一个项目中修复了这个确切的问题。

### --feedback--

考虑 Linda 是否说过他们有处理这个具体问题或类似问题的经验。

---

他们还没有修复这个具体问题，但他们之前修复过类似的问题。

---

他们之前已经多次修复了这个问题。

### --feedback--

思考 Linda 是否在谈论已经修复了这个确切的问题或类似的问题。
  
## --video-solution--

3

# --explanation--

要查找正确答案，请关注 Linda 是否在谈论修复 `exact issue` 还是 `similar issues`。 

Linda 明确表示他们以前没有解决过这个具体问题，但她也提到他们过去解决过类似的问题。 

正确答案应显示这种平衡——承认没有完全的匹配，但确认过去对相关问题的经验。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
