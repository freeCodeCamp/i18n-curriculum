---
id: 67adad520eb3ba05f8a1af1b
title: 작업 33
challengeType: 19
dashedName: task-33
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Anna가 Bob의 의견에 동의하려면 무엇이라고 말해야 할까요?

## --answers--

`I don't understand.`

### --audio-id--

ENd6da13d0

### --feedback--

이 표현은 혼란스러움을 나타내지만, Anna는 Bob의 생각에 동의하는 모습을 보여야 합니다.

---

`That makes sense.`

### --audio-id--

ENc50c4990

## --video-solution--

2

# --explanation--

`That makes sense`는 동의를 자연스럽게 표현하는 방법입니다. 사람들이 제안을 받아들이거나 이해할 때 대화에서 이 표현을 사용합니다. 예를 들어:

- **Developer:** `We should optimize the code before adding new features to avoid performance issues.`

- **Manager:** `That makes sense. A slow app will frustrate users.` - 이 사람은 동의하며 코드 최적화를 먼저 하는 것이 좋은 생각임을 이해합니다.

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
      "startTimestamp": 52,
      "finishTimestamp": 58.24
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
      "finishTime": 2.54,
      "dialogue": {
        "text": "So maybe we should focus on both.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 2.54,
      "finishTime": 7.24,
      "dialogue": {
        "text": "Find a balance between comfort and technology to ensure everyone has what they need.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.74
    }
  ]
}
```
