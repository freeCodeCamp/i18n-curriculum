---
id: 68249d79d4ddca45eff7fafd
title: 작업 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Jessica는 이 정보를 가지고 무엇을 할 계획인가요?

## --answers--

지금은 무시하고 더 많은 피드백을 기다린다.

### --feedback--

Jessica는 정보를 정리해서 공유할 것이라고 말했지 무시한다고 하지 않았습니다.

---

정보를 보고서로 정리하고 다른 사람들과 논의한다.

---

변경하기 전에 사용자에게 다시 테스트해 달라고 요청한다.

### --feedback--

재테스트나 사용자 피드백에 대해 언급하지 않았습니다.

---

검토 없이 바로 클라이언트에게 보낸다.

### --feedback--

Jessica는 먼저 팀과 이야기할 계획이지 바로 클라이언트에게 보내지 않습니다.

## --video-solution--

2

# --explanation--

Jessica는 `put all this information into a report`와 `talk about it with the team tomorrow`를 하겠다고 말했습니다. 이는 정보를 정리하고 팀과 논의할 계획임을 보여줍니다.

또한 피드백이 `should help`라고 말했는데, 이는 다음 단계를 안내할 것임을 의미합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
