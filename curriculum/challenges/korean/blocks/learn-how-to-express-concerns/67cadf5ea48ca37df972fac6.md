---
id: 67cadf5ea48ca37df972fac6
title: 작업 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.  

# --questions--

## --text--

Maria가 팀의 가장 중요한 요청으로 언급한 것은 무엇인가요?  

## --answers--

그들은 더 많은 도움이 필요합니다.  

---

그들은 더 긴 마감일을 원합니다.  

### --feedback--

Maria는 마감일 연장에 대해 언급하지 않았습니다.

---

그들은 작업 수를 줄이고 싶어 합니다.

### --feedback--

Maria는 작업 수를 줄이는 것에 대해 언급하지 않았습니다.  

---

그들은 더 많은 회의를 요청하고 있습니다.  

### --feedback--

Maria는 추가 회의에 대해 언급하지 않았습니다.

## --video-solution--

1  

# --explanation--

`First`는 중요도나 시간 순서대로 행동을 번호 매기고 싶을 때 사용합니다. 이 경우 Maria는 팀이 필요로 하는 것을 나열하는데, 가장 중요한 요청(더 많은 지원을 받는 것)부터 시작합니다. 또 다른 예:

`First, we should analyze the problem. Then, we can discuss solutions.` - 이것은 문제 분석이 다른 어떤 것보다 먼저임을 의미합니다.

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
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
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
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
