---
id: 67c03f86bccfec0be6de656b
title: 작업 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Anna가 무엇을 전달하고 있나요?

## --answers--

그녀는 Bob의 의견에 전적으로 동의하지 않고 그의 우려를 거부합니다.

### --feedback--

Anna는 자신의 의견을 말하기 전에 Bob의 의견을 인정합니다.

---

그녀는 Bob의 우려를 이해하지만 여전히 유연성이 더 나은 선택이라고 생각합니다.

---

그녀는 Bob의 우려를 이해하지 못합니다.

### --feedback--

Anna는 Bob의 인수를 이해합니다.

---

그녀는 Bob의 의견에 동의하고 마음을 바꿉니다.

### --feedback--

Anna는 Bob의 의견에 완전히 동의하지 않습니다.

## --video-solution--

2

# --explanation--

Anna는 `I see your point, but`를 사용해 Bob의 우려를 이해하면서도 다른 의견을 제시합니다.

그녀는 한 가지 범주에만 고집하는 것보다 유연성이 더 나은 해결책이라고 믿습니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
