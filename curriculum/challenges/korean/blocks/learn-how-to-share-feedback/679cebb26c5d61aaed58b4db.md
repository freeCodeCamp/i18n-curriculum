---
id: 679cebb26c5d61aaed58b4db
title: 도전 과제 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

James는 최신 업데이트 문제에 대해 무엇을 알고 있나요?

## --answers--

그는 문제를 정확히 알고 있습니다.

### --feedback--

James는 분명히 아무것도 듣지 못했다고 말합니다.

---

그는 그 문제에 대해 아무것도 모릅니다.

---

그는 이미 클라이언트와 이야기했습니다.

### --feedback--

James는 클라이언트와 이야기했다고 언급하지 않습니다.

---

그는 문제에 관한 이메일을 받았습니다.

### --feedback--

James는 아무것도 듣지 못했다고 말합니다.

## --video-solution--

2

# --explanation--

조동사를 포함한 짧은 대답은 질문에서 조동사를 반복하여 무언가를 확인하거나 부인합니다. 이 경우 Maria가 `Did you hear anything?`라고 묻자 James는 `No, I didn't.`라고 대답하며 단순히 `No.`라고 말하지 않습니다. 다음은 다른 예시입니다:

- `Are you coming to the meeting?` → `Yes, I am.`

- `Have they finished the report?` → `No, they haven't.`

- `Will she be here on time?` → `Yes, she will.`

짧은 대답은 응답을 자연스럽고 완전하게 들리게 하면서 전체 문장의 반복을 피합니다.

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
      },
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
