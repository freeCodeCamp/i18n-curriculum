---
id: 679d62d4afabb9cb6f9ece23
title: 작업 106
challengeType: 19
dashedName: task-106
lang: en-US
---

<!-- (Audio) Maria: If we rush, it could lead to more problems. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Maria가 피하고 싶어 하는 행동과 그 이유는 무엇인가요?

## --answers--

그녀는 문제를 고치는 것을 피하고 싶어 합니다.

### --feedback--

Maria는 문제를 고치지 말아야 한다고 말하지 않습니다.

---

그녀는 도움을 요청하는 것을 피하고 싶어 합니다.

### --feedback--

Maria는 도움을 요청하는 것에 대해 언급하지 않습니다.

---

그녀는 서두르는 것을 피하고 싶어 하며, 그것이 더 많은 문제를 일으킬 수 있기 때문입니다.

---

그녀는 소프트웨어 업데이트를 피하고 싶어 합니다.

### --feedback--

Maria는 업데이트를 피해야 한다고 말하지 않습니다.

## --video-solution--

3

# --explanation--

`To lead to problems`는 어떤 행동이나 결정이 어려움이나 부정적인 결과를 초래할 수 있음을 의미합니다. 예를 들어:

`Skipping the testing phase can lead to serious problems in the software.` - 이는 제대로 테스트하지 않으면 심각한 기술적 문제가 발생할 수 있음을 뜻합니다.

이 대화에서 Maria는 서두르면 추가 문제가 생길 수 있다고 걱정하고 있습니다.

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
      "startTimestamp": 47.08,
      "finishTimestamp": 49
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "If we rush, it could lead to more problems.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.42
    }
  ]
}
```
