---
id: 6856ddea73ea5fafe4d65cfc
title: 任務 95
challengeType: 19
dashedName: task-95
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) Jake: We could incorporate an interactive quiz during the onboarding process. It could teach users how to recognize and handle potential phishing attempts. -->

<!-- SPEAKING -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Linda 要如何稱讚 Jake 的想法？

## --answers--

`That's an excellent suggestion.`

### --audio-id--

en-b1-6856ddea73ea5fafe4d65cfc-SP1

---

`Are you sure that would work?`

### --audio-id--

en-b1-6856ddea73ea5fafe4d65cfc-SP2

### --feedback--

這聽起來令人懷疑，而非支援（某功能）。

## --video-solution--

1

# --explanation--

`That's an excellent suggestion.` 是一種禮貌且正面的方式，透過表達強烈的認同和讚賞來稱讚某人的想法。例如：

- 第一個人：`Let's add more visuals to the report.`－第一個人建議他們為報告添加更多圖形和影像，使其更生動。

- 第二人：`That's an excellent suggestion.`－這表示此人認為這個想法非常好且有幫助。

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
