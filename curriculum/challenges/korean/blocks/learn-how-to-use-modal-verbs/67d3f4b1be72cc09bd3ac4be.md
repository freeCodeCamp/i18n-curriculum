---
id: 67d3f4b1be72cc09bd3ac4be
title: 작업 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

이 조동사는 필요성이나 의무를 나타냅니다.

---

`do`

### --feedback--

이 동사는 `must` 다음에 와서 요구되는 행동을 나타냅니다.

# --explanation--

`Must`는 필요성이나 의무를 표현하는 조동사입니다. 예를 들어:

- `You must wear a seatbelt while driving.` - 이것은 요구됩니다.

- `We must submit the report by Friday.` - 이것은 필요합니다.

조동사 다음에는 항상 동사의 기본형(원형)이 옵니다 (`to` 없이).

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
      "startTimestamp": 4.02,
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
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
