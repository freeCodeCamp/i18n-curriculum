---
id: 661bddbdbbc09e2b8fac0801
title: 작업 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

전치사 `at`는 지도상의 한 지점을 나타냅니다. 특정 위치나 장소를 알려줍니다. 무언가가 어디에서 일어나고 있는지, 누군가가 어디에 있는지 이해하는 데 도움이 됩니다.

예시:

`We'll meet at the coffee shop.` (이 문장에서 `at`는 회의가 열릴 장소인 커피숍을 지정하는 데 사용되었습니다).

`I'll be waiting for you at the bus stop.` (여기서 `at`는 누군가가 기다릴 장소인 버스 정류장을 나타내는 데 사용되었습니다).

문장을 듣고 빈칸을 채우세요.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

무언가가 어디에 있거나 일어나는 위치를 이해하는 데 도움을 주는 전치사입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
