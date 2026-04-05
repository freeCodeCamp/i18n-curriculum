---
id: 67caec5ecebab7be7456df7f
title: 작업 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.  

# --questions--

## --text--

팀이 제기한 다른 문제는 무엇인가요?

## --answers--

업데이트를 너무 일찍 받는다는 점입니다.

### --feedback--

Maria는 정반대의 내용을 언급합니다.

---

그들이 의사소통을 많이 하고 싶어하지 않는다는 점입니다.

### --feedback--

Maria는 팀의 의사소통 의지에 대해 언급하지 않습니다.  

---

변경 사항을 제때 듣지 못하는 경우가 많다는 점입니다.

---

의사소통에 너무 많은 사람이 관여한다고 생각한다는 점입니다.

### --feedback--

Maria는 관여하는 사람 수에 대해 언급하지 않습니다.

## --video-solution--

3  

# --explanation--

`isn't great`라고 말할 때는 부정적인 메시지를 완화하는 표현입니다 (예를 들어 `it is bad`라고 말하는 대신). 이렇게 하면 비판이 더 공손하거나 간접적으로 들립니다. 다음 문장들을 살펴보세요:

- `The design is bad.` - 이것은 강한 부정적 진술로, 종종 무례하게 들립니다.

- `The design isn't great. Maybe we can improve it.` - 이렇게 말하면 덜 거칠고 더 건설적으로 들립니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
