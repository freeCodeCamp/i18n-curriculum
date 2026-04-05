---
id: 67b9becbb4fd3b0d7fc2411e
title: 작업 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

이 단어는 예상보다 일이 더 오래 걸리는 상황을 가리킵니다.

---

`miscommunication`

### --feedback--

이 단어는 명확하지 않거나 잘못된 정보로 인해 발생하는 오해를 뜻합니다.

# --explanation--

David는 비동기 원격 근무가 `delays` (응답과 진행이 느려지는 것)과 `miscommunication` (사람들이 서로를 오해하는 것)을 초래할 수 있다고 걱정합니다.

직원들이 서로 다른 시간에 일하기 때문에 메시지에 답하는 데 시간이 더 걸릴 수 있고, 소통이 명확하지 않으면 오해가 생길 수 있습니다.

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
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
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
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
