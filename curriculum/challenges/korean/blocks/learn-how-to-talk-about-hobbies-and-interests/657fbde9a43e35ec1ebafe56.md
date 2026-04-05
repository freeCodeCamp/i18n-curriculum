---
id: 657fbde9a43e35ec1ebafe56
title: 작업 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

이 문맥에서 `Would you like to come?` 구절은 무엇을 전달하나요?

## --answers--

초대를 거절하는 것.

### --feedback--

이 구절은 "아니요"라고 말하는 것이 아닙니다. 초대를 제안하는 내용입니다.

---

초대를 하는 것.

---

감사를 표현하는 것.

### --feedback--

이 구절은 "감사합니다"라는 뜻이 아닙니다. 누군가를 초대하는 내용입니다.

---

정보를 요청하는 것.

### --feedback--

이 구절은 정보를 묻는 질문이 아니라 정중하게 이벤트에 초대하는 표현입니다.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
