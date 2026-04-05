---
id: 679d3cfdaca2eb81f8d81cf7
title: 작업 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Maria가 James에게 무엇을 하라고 요청하고 있나요?

## --answers--

문제를 즉시 고치라고 요청하는 것.

### --feedback--

Maria는 James에게 문제를 바로 고치라고 요청하지 않았습니다.

---

문제를 클라이언트에게 보고하라고 요청하는 것.

### --feedback--

Maria는 클라이언트에게 알리라고 말하지 않았습니다.

---

문제를 조사하라고 요청하는 것.

---

지금은 문제를 무시하라고 요청하는 것.

### --feedback--

Maria는 James에게 문제를 무시하라고 요청하지 않았습니다.

## --video-solution--

3

# --explanation--

`Can`는 누군가에게 정중하게 무언가를 해달라고 비공식적으로 요청할 때 흔히 사용됩니다. 예를 들어:

`Can you send me the report by noon?` - 누군가에게 보고서를 보내달라고 정중하게 요청하는 방법입니다.

이 대화에서 Maria는 James에게 문제를 조사해 달라고 요청하고 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
