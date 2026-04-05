---
id: 67baf3ed288e8b06f4ab0dfb
title: 작업 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

이 두 단어는 동료 간의 단결감과 협력 의식을 나타냅니다. 첫 번째 단어는 함께 일하는 그룹을 의미하고, 두 번째 단어는 공유하는 열정이나 동기를 뜻합니다.

---

`problem-solving`

### --feedback--  

이 합성어는 도전 과제에 대한 해결책을 찾는 과정을 의미합니다. 첫 부분은 고쳐야 할 문제를 나타내고, 두 번째 부분은 해결책을 찾는다는 뜻의 동사입니다. 두 부분 사이에는 `-`를 사용하세요.

# --explanation--

David는 사무실에서 함께 일하는 것이 `team spirit` (동료 간의 연결감과 단결감)를 강화하고 `problem-solving` (도전 과제 해결을 더 효율적으로 하는 것)을 향상시킨다고 믿습니다.

그는 같은 물리적 공간에 있으면 직원들이 협력하고 서로를 지원하기가 더 쉽다고 주장합니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
