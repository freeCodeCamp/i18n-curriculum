---
id: 685a9aaee82fca9effece4bd
title: 任务 130
challengeType: 22
dashedName: task-130
lang: en-US
---

<!-- (Audio) Bob: Yes, let's do that. It'll help us manage the attendee list better. Can you draft the invitation? -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Yes, let's do that. It'll help us manage the BLANK list better. Can you draft the invitation?`

## --blanks--

`attendee`

### --feedback--

这指的是出席某个事件或会议的人。

# --explanation--

`attendee` 是参加或出席某个事件（例如会议、研讨会或大会）的人。例如：

`Each attendee received a welcome packet when they arrived.` – 这意味着每个参加事件的人都收到了一个打包。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_24-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.78,
      "finishTimestamp": 39.42
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
      "finishTime": 3.64,
      "dialogue": {
        "text": "Yes, let's do that. It'll help us manage",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.64,
      "finishTime": 6.64,
      "dialogue": {
        "text": "the attendee list better. Can you draft the invitation?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.14
    }
  ]
}
```
