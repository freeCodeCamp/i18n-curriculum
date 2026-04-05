---
id: 67d3fccf15badf0cae314d1c
title: 작업 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

이 동사는 필요성을 나타내며, 무언가가 요구된다는 뜻입니다.

---

`do`

### --feedback--

이 동사는 `need` 다음에 와서 어떤 행동에 대해 물을 때 사용합니다.

# --explanation--

`Need to`는 필요한 행동을 물을 때 사용합니다. 그 뒤에는 동사의 기본형(`do`)이 옵니다. 예를 들어:

- `We need to do more testing before releasing the app.` - 앱을 출시하기 전에 테스트하는 것이 필요합니다.

- `We need to do some updates to fix the bugs.` - 문제를 해결하려면 시스템을 업데이트하는 것이 필요합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
