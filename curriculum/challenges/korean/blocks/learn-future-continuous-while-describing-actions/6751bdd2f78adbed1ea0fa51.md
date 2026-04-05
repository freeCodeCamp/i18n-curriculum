---
id: 6751bdd2f78adbed1ea0fa51
title: 작업 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Brian의 걱정은 무엇인가요?

## --answers--

사용자에게 다운타임에 대해 알려야 하는지 여부.

---

다운타임이 너무 오래 지속될지 여부.

### --feedback--

Brian은 다운타임 길이에 대해 묻지 않았습니다.

---

사용자가 기술적 문제를 겪을지 여부.

### --feedback--

Brian은 기술적 문제에 대해 언급하지 않았습니다.

---

다운타임이 서버 성능에 영향을 미칠지 여부.

### --feedback--

Brian의 걱정은 서버 성능과 관련이 없습니다.

## --video-solution--

1

# --explanation--

Brian은 사용자에게 다운타임에 대해 업데이트해야 하는지 묻고 있어, 그의 걱정은 다운타임 길이, 기술 문제, 서버 성능보다는 사용자와의 소통에 관한 것입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
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
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
