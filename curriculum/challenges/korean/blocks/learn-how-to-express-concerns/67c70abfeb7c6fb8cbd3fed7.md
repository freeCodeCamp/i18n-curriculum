---
id: 67c70abfeb7c6fb8cbd3fed7
title: 작업 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.  

# --questions--

## --text--

Maria가 James와 무엇에 대해 이야기하고 싶어 하나요?  

## --answers--

Bob의 이번 주 일정.  

### --feedback--

Maria는 Bob의 일정에 대해 언급하지 않습니다.  

---

Bob과의 가장 최근 회의.  

---

앞으로 있을 프로젝트 마감일.  

### --feedback--

Maria는 마감일에 대해 언급하지 않고, 오직 Bob과의 회의만 말합니다.  

---

클라이언트의 예산 요청.  

### --feedback--

Maria는 이 문장에서 클라이언트 요청에 대해 언급하지 않습니다.  

## --video-solution--

2  

# --explanation--

`Can we talk about...`는 토론할 주제를 소개할 때 사용합니다. 중요한 내용에 대해 정중하게 대화를 요청하는 표현입니다. 예를 들어:

`Can we talk about the changes to the project timeline?` - 이는 화자가 프로젝트 일정 조정에 대해 논의하고 싶다는 뜻입니다.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
