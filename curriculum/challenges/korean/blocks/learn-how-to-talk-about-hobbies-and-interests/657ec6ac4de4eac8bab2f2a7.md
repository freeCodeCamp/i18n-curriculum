---
id: 657ec6ac4de4eac8bab2f2a7
title: 작업 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

단어 `date`는 다양한 상황에서 사용될 수 있습니다. 보통 두 사람 간의 로맨틱한 만남을 의미하지만, 친구나 동료 간의 약속이나 계획된 이벤트를 뜻할 수도 있습니다. 예를 들어:

`Let's set a date for our next meeting.` - 여기서는 `date`가 비로맨틱한 의미로 사용되어, 만남을 위한 날짜를 정하는 것을 나타냅니다.

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

이 단어는 계획된 활동의 유형을 명확히 하며, 자전거를 타는 외출임을 나타냅니다.

---

`date`

### --feedback--

이 단어는 예정된 만남이나 이벤트를 가리킵니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
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
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
