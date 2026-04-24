---
id: 67d3fba28a7b770be2fef2ce
title: タスク6
challengeType: 19
dashedName: task-6
lang: en-US
---

<!-- (Audio) Jessica: Hi Mark, we need to talk about security protocols for the new project. There are a few things you must do to ensure compliance. -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

マークはジェシカと話すことに抵抗がなく、何をすればいいのか知りたいと思っています。彼は何と言うでしょうか？

## --answers--

`Sorry, Jessica. I'm too busy right now.`

### --audio-id--

EN415e8cd4

### --feedback--

この返答はマークが話す意欲を示していません。

---

`Sure, Jessica. What do I need to do?`

### --audio-id--

EN61f614de

## --video-solution--

2

# --explanation--

正しい答えは、マークが話す意欲を示し、必要なステップを知りたがっていることを表しています。

`Sure, Jessica` は同意と会話への前向きな姿勢を示しています。

`What do I need to do?` はマークが指示を求めていることを示しており、ジェシカの「遵守を確実にするためにしなければならないこと」についての発言と一致します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "Hi, Mark. We need to talk about security protocols for the new project.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 5.22,
      "finishTime": 7.62,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.12
    }
  ]
}
```
