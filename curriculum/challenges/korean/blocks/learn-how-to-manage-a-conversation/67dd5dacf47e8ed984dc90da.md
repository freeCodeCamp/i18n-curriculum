---
id: 67dd5dacf47e8ed984dc90da
title: 작업 17
challengeType: 19
dashedName: task-17
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

앨리스가 현재 마감일에 대한 결정이 없다는 것을 간단히 어떻게 대답할 수 있을까요?

## --answers--

`Not yet.`

### --audio-id--

EN6acf22f8

---

`We're still looking for it.`

### --audio-id--

EN391abad4

### --feedback--

이 답변은 마감일 설정에 관한 질문과 관련이 없습니다.

## --video-solution--

1

# --explanation--

`Not yet`는 어떤 일이 지금까지 일어나지 않았거나 완료되지 않았지만 앞으로 일어날 수도 있음을 짧고 자연스럽게 표현하는 방법입니다. 예를 들어:

- **Manager:** `Have you sent the email?` - 여기서는 이메일이 발송되었는지 묻고 있습니다.

- **Employee:** `Not yet.` – 이 말은 이메일이 아직 발송되지 않았지만 발송할 계획임을 의미합니다.

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
