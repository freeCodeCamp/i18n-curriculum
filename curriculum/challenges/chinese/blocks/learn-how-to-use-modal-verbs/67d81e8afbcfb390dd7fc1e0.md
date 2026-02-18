---
id: 67d81e8afbcfb390dd7fc1e0
title: 任务 133
challengeType: 19
dashedName: task-133
showSpeakingButton: true
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Jake 还没有查看那个，并且他说团队应该专注于其他事情。他会怎么说？  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

en-b1-67d81e8afbcfb390dd7fc1e0-SP1

---

`I already checked, and everything looks fine.`

### --audio-id--

en-b1-67d81e8afbcfb390dd7fc1e0-SP2

### --feedback--

Jake 还没有查看，所以他无法确认这一点。

## --video-solution--

1

# --explanation--

在评估单个 `file` 之前，通常首先要确保关键系统的安全。

`Not yet.` 意味着 Jake 还没有查看哪些文件被泄露。

`We should focus on the critical systems first.` 意味着团队应优先保护系统的关键部分，而不是查看文件。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
