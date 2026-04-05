---
id: 66c8fb021dcfcb767dfec33a
title: 작업 16
challengeType: 19
dashedName: task-16
lang: en-US
---
<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

아래 문장 중 옳은 것은 무엇인가요?

## --answers--

그들은 이런 문제를 한 번도 고친 적이 없습니다.

### --feedback--

Linda가 비슷한 문제에 대한 경험을 언급하는지 생각해 보세요.

---

그들은 이미 다른 프로젝트에서 이 정확한 문제를 고친 적이 있습니다.

### --feedback--

Linda가 이 특정 문제에 대한 경험인지 아니면 비슷한 문제인지 말하는지 고려하세요.

---

그들은 이 정확한 문제를 고치지는 않았지만, 비슷한 문제는 이전에 고친 적이 있습니다.

---

그들은 이 문제를 여러 번 고친 적이 있습니다.

### --feedback--

Linda가 이 정확한 문제를 고쳤다고 말하는지 아니면 비슷한 문제를 고쳤다고 말하는지 생각해 보세요.
  
## --video-solution--

3

# --explanation--

정답을 찾으려면 Linda가 `exact issue`를 고쳤다고 말하는지 아니면 `similar issues`를 고쳤다고 말하는지에 포커스를 맞추세요.

Linda는 이 정확한 문제를 고친 적은 없지만, 과거에 비슷한 문제를 해결한 적이 있다고 분명히 말합니다.

정답은 이 균형을 보여야 합니다—정확히 일치하는 문제는 없지만 관련 문제에 대한 경험은 있다고 인정하는 문장입니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
