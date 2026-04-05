---
id: 67a9f44e6dcabb0c402a9bfb
title: 작업 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Bob은 무엇을 알고 싶어 하나요?

## --answers--

직원들이 이미 사무용 가구를 샀는지.

### --feedback--

Bob은 구매 여부 확인을 묻는 것이 아닙니다.

---

사무용 가구가 얼마인지.

### --feedback--

Bob은 가격에 대해 묻지 않습니다.

---

회사가 수당을 인상할지 여부.

### --feedback--

Bob은 수당 변경에 대해 이야기하지 않습니다.

---

Anna가 수당을 사무용 가구에 사용하는 것이 좋은 생각인지 어떻게 생각하는지.

## --video-solution--

4

# --explanation--

Bob은 `Do you think that's a good idea?`를 묻습니다. 이는 제안이나 계획에 대한 누군가의 의견을 묻는 방법입니다. 의견을 묻는 다른 표현은 다음과 같습니다:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

이 대화에서 Bob은 직원들이 원격 근무 수당을 사무용 가구에 사용하는 것에 대해 말하고 있습니다. 자신의 의견을 말하는 대신 Anna가 어떻게 생각하는지 묻고 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
