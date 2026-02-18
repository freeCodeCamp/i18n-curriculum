---
id: 6856ddea73ea5fafe4d65cfc
title: 任务 95
challengeType: 19
dashedName: task-95
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) Jake: We could incorporate an interactive quiz during the onboarding process. It could teach users how to recognize and handle potential phishing attempts. -->

<!-- SPEAKING -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

琳达如何称赞 Jake 的想法？

## --answers--

`That's an excellent suggestion.`

### --audio-id--

en-b1-6856ddea73ea5fafe4d65cfc-SP1

---

`Are you sure that would work?`

### --audio-id--

en-b1-6856ddea73ea5fafe4d65cfc-SP2

### --feedback--

这听起来令人怀疑，而非支持。

## --video-solution--

1

# --explanation--

`That's an excellent suggestion.` 是一种礼貌且积极的方式，通过表达强烈的认同和赞同来称赞某人的想法。例如：

- 人物 1：`Let's add more visuals to the report.` – 第一个人建议他们为报告添加更多图形和图像，使其更加生动。

- 人物 2：`That's an excellent suggestion.` – 这意味着此人认为这个想法非常好且有帮助。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_24-2.mp3",
      "startTime": 1,
      "startTimestamp": 74.74,
      "finishTimestamp": 82.58
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "We could incorporate an interactive quiz",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 3.06,
      "finishTime": 4.3,
      "dialogue": {
        "text": "during the onboarding process.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 4.6,
      "finishTime": 6.36,
      "dialogue": {
        "text": "It could teach users how to recognize",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 6.36,
      "finishTime": 8.84,
      "dialogue": {
        "text": "and handle potential phishing attempts.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
