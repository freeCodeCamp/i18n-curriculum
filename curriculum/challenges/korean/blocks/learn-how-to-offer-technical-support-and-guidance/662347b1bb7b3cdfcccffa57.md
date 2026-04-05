---
id: 662347b1bb7b3cdfcccffa57
title: 작업 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard`는 동사 `to hear`의 과거형으로, 귀를 통해 무언가를 알게 되거나 정보를 전달받는다는 뜻입니다. 예를 들어, `I heard the news yesterday`는 전날 그 소식을 알게 되었다는 의미입니다.

소프트웨어 맥락에서 `authentication module`는 사용자의 신원을 확인하는 시스템의 일부를 말합니다. 주로 로그인 시스템에서 사용됩니다. 예를 들어, `The authentication module checks the username and password`는 사용자의 자격 증명을 확인한다는 뜻입니다.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

이는 `to hear`의 과거형으로, Brian이 Sophie의 작업에 대해 알게 되었음을 나타냅니다.

---

`fixing`

### --feedback--

소프트웨어의 문제(버그)를 고치거나 해결하는 행위를 의미합니다.

---

`authentication`

### --feedback--

소프트웨어 모듈에서 사용자의 신원을 확인하는 과정을 의미합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
