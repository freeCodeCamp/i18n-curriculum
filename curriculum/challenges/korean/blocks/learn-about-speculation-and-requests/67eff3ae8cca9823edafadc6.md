---
id: 67eff3ae8cca9823edafadc6
title: 작업 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Jake가 무엇에 대해 묻고 있나요?

## --answers--

업데이트가 적용되었는지 여부.

---

새로운 보안 업데이트가 출시되었는지 여부.

### --feedback--

Jake는 새로운 업데이트가 있는지 묻는 것이 아닙니다.

---

누가 보안 업데이트를 담당하는지.

### --feedback--

Jake는 특정 인물에 대해 묻는 것이 아닙니다.

---

보안 업데이트가 어떻게 작동하는지.

### --feedback--

Jake는 Jessica가 보안 업데이트에 대해 알고 있다고 가정합니다.

## --video-solution--

1

# --explanation--

Jake는 누군가가 모든 업데이트가 설치되었는지 확인했는지 알고 싶어 합니다.

`Have you checked...?`에서 Jessica가 어떤 것을 살펴봤는지 묻고 있습니다.

`whether all security updates were applied`에서 업데이트가 성공적으로 설치되었는지 묻고 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
