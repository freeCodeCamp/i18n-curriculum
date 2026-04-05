---
id: 67d83cac8f7ced9c5df81df9
title: 작업 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

이 조동사는 과거 사건에 대한 가능성이나 불확실성을 나타냅니다.

---

`have taken`

### --feedback--

이 동사는 `Past Perfect` 형태로, 과거에 일어났을 수도 있는 일을 말할 때 사용합니다. 두 단어를 사용하세요.

# --explanation--  

`Might`는 가능성을 나타냅니다.  

`Have taken`는 `Past Perfect` 형태의 `take`로, 과거에 일어났을 수도 있는 행동을 말할 때 사용합니다. 예를 들어:

`The attacker might have taken sensitive files.` - 확실하지는 않지만 가능성이 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
