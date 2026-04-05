---
id: 679d26afcebc4ea8a9478fbf
title: 작업 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

James는 소프트웨어를 업데이트해야 한다고 확신하나요?

## --answers--

그렇지 않습니다. Maria의 의견을 묻고 있기 때문입니다.

---

네, 이미 업데이트하기로 결정했습니다.

### --feedback--

James가 Maria에게 묻고 있으니 아직 결정하지 않은 것 같습니다.

---

네, 이미 소프트웨어 업데이트를 시작했습니다.

### --feedback--

James는 소프트웨어를 업데이트해야 하는지 묻고 있습니다.

---

반대로, 업데이트하지 않아야 한다고 확신합니다.

### --feedback--

James는 그 아이디어를 완전히 거부하는 것이 아니라 Maria의 의견을 묻고 있습니다.

## --video-solution--

1

# --explanation--

`To update`는 새 버전을 출시하여 소프트웨어를 수정하거나 개선하는 것을 의미합니다. 업데이트에는 버그 수정, 새로운 기능, 성능 향상이 포함될 수 있습니다. 예를 들어:

`The company released an update to fix security vulnerabilities in the app.` - 보안 문제를 해결하기 위해 새 버전이 출시되었다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
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
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
