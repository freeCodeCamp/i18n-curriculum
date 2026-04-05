---
id: 66234ab7decaffe8ecb8327d
title: 작업 56
challengeType: 22
dashedName: task-56
lang: en-US
---

<!-- (Audio) Sophie: Ok, so if I make changes here, do you think it could affect other functionalities? -->

# --description--

`To affect`는 무언가에 영향을 미치거나 작용한다는 뜻입니다. 프로그래밍에서 `affecting` 시스템의 한 영역이라는 것은 한 영역의 변경이 다른 영역의 작동 방식에 영향을 줄 수 있음을 의미합니다.

예를 들어, `Changing the database structure could affect the application's performance`는 수정이 성능에 영향을 미칠 수 있음을 나타냅니다.

# --fillInTheBlank--

## --sentence--

`Ok, so if I make changes here, do you think it could BLANK other BLANK?`

## --blanks--

`affect`

### --feedback--

이 문맥에서는 소피의 변경이 시스템의 다른 부분에 미칠 수 있는 잠재적 영향을 가리킵니다.

---

`functionalities`

### --feedback--

변경으로 인해 영향을 받을 수 있는 시스템의 다양한 작업이나 기능들입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 21.3,
      "finishTimestamp": 25.64
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "Okay, so if I make changes here,",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.36,
      "finishTime": 5.34,
      "dialogue": {
        "text": "do you think it could affect other functionalities?",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
