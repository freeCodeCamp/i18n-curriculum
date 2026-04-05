---
id: 67ddb67d2bbf41bb5dce0fb3
title: 작업 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

James의 대답에서 무엇을 알 수 있나요?

## --answers--

그는 먼저 문제를 해결해야 합니다.

### --feedback--

James는 다른 문제에 대해 언급하지 않습니다.

---

그는 친근하게 대화를 마무리하고 있습니다.

---

그는 지금 회의를 잡으려고 합니다.

### --feedback--

회의 일정을 잡는다는 언급이 없습니다.

---

그는 더 많은 도움을 요청하고 있습니다.

### --feedback--

James는 요청을 하지 않습니다.

## --video-solution--

2

# --explanation--

대화에서는 의미가 명확할 때 종종 단어를 생략합니다. `Talk to you later`에서 주어 `I'll` (`I will`의 축약형)이 생략되었습니다. 전체 문장은 `I'll talk to you later`일 것입니다. 이런 생략은 일상 대화에서 흔합니다. 또 다른 예:

`See you tomorrow!` - 이것은 `I'll see you tomorrow`를 더 짧게 표현한 방식입니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
