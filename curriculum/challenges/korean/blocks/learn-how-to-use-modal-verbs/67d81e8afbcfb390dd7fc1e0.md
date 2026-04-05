---
id: 67d81e8afbcfb390dd7fc1e0
title: 작업 133
challengeType: 19
dashedName: task-133
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Jake는 아직 확인하지 않았고 팀이 다른 것에 포커스를 맞춰야 한다고 말합니다. 그는 무엇이라고 말할까요?  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

ENcd1493b2

---

`I already checked, and everything looks fine.`

### --audio-id--

EN4ec0b91b

### --feedback--

Jake는 아직 확인하지 않았기 때문에 이를 확실히 말할 수 없습니다.

## --video-solution--

1

# --explanation--

중요 시스템을 보호하는 것이 개별 파일을 평가하기 전에 보통 가장 우선순위입니다.

`Not yet.`는 Jake가 어떤 파일이 손상되었는지 확인하지 않았다는 뜻입니다.

`We should focus on the critical systems first.`는 파일을 보는 대신 팀이 시스템의 중요한 부분을 보호하는 데 우선순위를 둬야 한다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
