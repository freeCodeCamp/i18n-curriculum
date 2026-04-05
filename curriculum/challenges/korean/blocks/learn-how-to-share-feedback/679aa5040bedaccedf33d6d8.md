---
id: 679aa5040bedaccedf33d6d8
title: 도전 과제 45
challengeType: 19
dashedName: task-45
lang: en-US
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

왜 Brian은 모두가 똑같이 생각하는 것이 좋지 않다고 생각할까요?

## --answers--

중요한 세부 사항을 간과할 수 있기 때문입니다.

---

의사결정이 더 빨라지기 때문입니다.

### --feedback--

Brian은 합의가 유익하다고 말하지 않습니다.

---

불일치는 항상 문제를 일으키기 때문입니다.

### --feedback--

Brian은 불일치가 문제를 일으킨다고 말하는 것이 아니라, 어느 정도의 불일치는 유용하다고 말합니다.

---

아무도 의견을 공유하지 않을 것이기 때문입니다.

### --feedback--

Brian은 사람들이 의견 공유를 거부한다고 말하지 않습니다.

## --video-solution--

1

# --explanation--

결과 절에서 `if + verb in the Simple Past` 다음에 `might` 구조는 가능한 결과가 있는 가상의 상황을 설명할 때 사용합니다. 예를 들어:

`If you studied more, you might pass the exam.` - 이는 그 사람이 더 공부하면 합격할 가능성이 있다는 뜻입니다.

이 대화에서 `If we all agreed on everything, we might miss important details`은 완전한 합의가 가져올 수 있는 부정적인 결과를 표현합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
