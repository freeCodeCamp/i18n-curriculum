---
id: 655b67f02eecf57fa75ceecf
title: 작업 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

To `stay`는 특정 상태나 조건을 유지하는 것을 나타내는 데 사용됩니다. 주로 자신을 특정 상황에 계속 두도록 하는 지시나 조언에 자주 쓰입니다. 예를 들어:

- `Stay safe online.` - 인터넷을 사용하는 동안 안전을 유지하세요.

- `Stay calm during the test.` - 침착함을 유지하세요.

- `Stay focused on your work.` - 작업에 계속 집중하세요.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

이 동사는 Sophie가 팀을 적극적으로 돕거나 지원하고 있음을 나타냅니다. `-ing`로 끝납니다.

---

`stay`

### --feedback--

이 단어는 특정 상태, 이 경우 온라인에서 안전한 상태를 유지하도록 제안할 때 사용됩니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
