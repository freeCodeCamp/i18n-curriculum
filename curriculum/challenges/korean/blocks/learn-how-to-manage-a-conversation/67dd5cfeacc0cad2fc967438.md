---
id: 67dd5cfeacc0cad2fc967438
title: 작업 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

James가 알고 싶어 하는 것은 무엇인가요?

## --answers--

첫 번째 단계의 마감일에 합의했는지 여부.

---

프로젝트가 취소되었는지 여부.

### --feedback--

James는 프로젝트 취소에 대해 언급하지 않습니다.

---

Alice가 첫 번째 단계를 담당하는지 여부.

### --feedback--

James는 책임에 대해 묻지 않습니다.

---

팀이 마지막 단계를 완료했는지 여부.

### --feedback--

James는 마지막 단계에 대해 이야기하지 않습니다.

## --video-solution--

1

# --explanation--

`By the way`는 대화에 새롭지만 관련된 주제를 도입할 때 사용합니다. 보통 화자가 방금 기억해낸 것이나 확인하고 싶은 것을 꺼낼 때 쓰입니다. 예를 들어:

`By the way, have you seen the updated report?` – 이미 논의 중인 내용과 관련된 새로운 질문을 도입합니다.

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
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
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
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
