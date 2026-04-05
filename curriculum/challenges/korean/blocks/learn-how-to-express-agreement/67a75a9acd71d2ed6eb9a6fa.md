---
id: 67a75a9acd71d2ed6eb9a6fa
title: 작업 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

이 두 단어 구는 사용자가 제품과 상호작용하는 다양한 상황을 나타냅니다.

# --explanation--

`User scenarios`는 사용자가 목표를 달성하기 위해 제품과 상호작용하는 다양한 상황을 설명합니다. 이는 팀이 사용자 경험을 테스트하고 개선하는 데 도움이 됩니다. 예를 들어:

`We created user scenarios to see how customers navigate the checkout process.` – 이는 팀이 사용자가 구매를 완료하는 다양한 방법을 시뮬레이션하여 문제를 찾아낸다는 뜻입니다.  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
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
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
