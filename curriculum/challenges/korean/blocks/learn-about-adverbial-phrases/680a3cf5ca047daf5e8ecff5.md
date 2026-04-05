---
id: 680a3cf5ca047daf5e8ecff5
title: 작업 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (Audio) Sophie: This way, we can understand the limits better before we launch it fully. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`This way, we can understand the limits better BLANK we launch it fully.`

## --blanks--

`before`

### --feedback--

이것은 어떤 일이 다른 일보다 먼저 일어난다는 것을 나타낼 때 사용합니다.

# --explanation--

`Before`는 한 동작이 다른 동작보다 먼저 일어난다는 것을 보여줄 때 사용합니다. 예를 들어:

- `Please save your work before you close the program.` – 이것은 저장이 프로그램을 닫기 전에 먼저 일어나야 한다는 뜻입니다.

- `He always checks his code carefully before submitting it.` – 이것은 제출하기 전에 먼저 확인하는 과정을 의미합니다.

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
      "filename": "B1_18-2.mp3",
      "startTime": 1,
      "startTimestamp": 40.52,
      "finishTimestamp": 43.78
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "This way, we can understand the limits better",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.06,
      "finishTime": 4.26,
      "dialogue": {
        "text": "before we launch it fully.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.76
    }
  ]
}
```
