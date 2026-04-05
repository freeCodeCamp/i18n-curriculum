---
id: 67f36533ffaeffe3ac2dad2b
title: 작업 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Jessica가 무엇을 설명하고 있나요?

## --answers--

현재 업데이트 일정에 문제가 있었습니다.

### --feedback--

Jessica는 업데이트 일정 자체가 아니라 기능의 시기에 대해 이야기하고 있습니다.

---

예산 추적 기능은 현재 업데이트가 아니라 다음 업데이트에 포함될 예정입니다.

---

예산 추적 기능이 현재 업데이트에서 제거되었습니다.

### --feedback--

Jessica는 기능이 제거되었다고 말하지 않습니다.

---

기능이 실수로 이번 업데이트에 포함되었습니다.

### --feedback--

Jessica는 기능이 실수로 포함되었다고 말하지 않습니다.

## --video-solution--

2

# --explanation--

Jessica는 `The budget tracking feature is planned for the next update`라고 말하며, 이 기능이 현재 업데이트에는 포함되지 않고 다음 업데이트에 추가될 것이라고 설명합니다.

이로써 기능 시기에 대한 혼란이 해소됩니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
