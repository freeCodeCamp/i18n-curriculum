---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: 작업 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

오디오를 듣고 질문에 답하세요.

# --questions--

## --text--

Tom은 무엇에 대해 묻고 있나요?

## --answers--

Anna가 HR에서 일하는지

### --feedback--

Tom의 질문은 Anna의 역할에 관한 것이 아니라, Anna와 함께 일한 적이 있는지에 관한 것입니다.

---

Alice가 Anna와 함께 일한 경험이 있는지

---

HR에서 일하는 것을 좋아하는지

### --feedback--

질문은 Anna와 함께 일한 과거 경험에 관한 것이며, HR에서 일하는 것에 대한 개인적인 감정에 관한 것이 아닙니다.

---

Anna가 일한 적이 있는지

### --feedback--

Tom의 질문은 Anna의 근무 이력보다는 청자의 Anna와의 경험에 초점이 맞춰져 있습니다.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
