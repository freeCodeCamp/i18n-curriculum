---
id: 67dd5baa84d2fcc56c09dce3
title: 작업 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

이는 무언가에 대해 선택하거나 결론을 내리는 것을 의미합니다.

---

`phase`

### --feedback--

이는 과정이나 프로젝트의 특정 단계 또는 부분을 가리킵니다.

# --explanation--

`To decide`는 생각한 후에 무언가를 선택하는 것을 의미합니다. 예를 들어:

`We need to decide which tools to use for the project.` – 이는 옵션을 고려한 후 도구를 선택하는 것을 의미합니다.

`phase`는 더 큰 과정의 한 부분 또는 단계를 가리킵니다. 예를 들어:

`We just finished the testing phase of the software.` – 이는 개발 과정에서 테스트 단계가 완료되었음을 의미합니다.

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
