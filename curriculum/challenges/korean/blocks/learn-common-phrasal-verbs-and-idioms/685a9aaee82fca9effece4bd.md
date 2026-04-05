---
id: 685a9aaee82fca9effece4bd
title: 작업 130
challengeType: 22
dashedName: task-130
lang: en-US
---

<!-- (Audio) Bob: Yes, let's do that. It'll help us manage the attendee list better. Can you draft the invitation? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Yes, let's do that. It'll help us manage the BLANK list better. Can you draft the invitation?`

## --blanks--

`attendee`

### --feedback--

이것은 이벤트나 회의에 참석한 사람을 가리킵니다.

# --explanation--

`attendee`는 회의, 세미나, 컨퍼런스 같은 이벤트에 참석하거나 그 자리에 있는 사람을 뜻합니다. 예를 들어:

`Each attendee received a welcome packet when they arrived.` – 이 문장은 이벤트에 온 모든 사람이 자료를 받았다는 의미입니다.

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
