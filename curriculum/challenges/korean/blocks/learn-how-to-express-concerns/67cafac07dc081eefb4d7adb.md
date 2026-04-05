---
id: 67cafac07dc081eefb4d7adb
title: 작업 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.  

# --questions--

## --text--

주간 회의를 하는 목적은 무엇인가요?

## --answers--

팀이 가진 작업 수를 줄이기 위해서입니다.

### --feedback--

Bob은 작업 수를 줄인다고 언급하지 않았습니다.  

---

프로젝트에 어떤 변경도 하지 않기 위해서입니다.

### --feedback--

Bob은 변경을 피하자고 제안하지 않았습니다.

---

명확한 목표 없이 회의 수를 늘리기 위해서입니다.

### --feedback--

Bob은 구체적인 목표를 가지고 있다고 말했습니다.

---

모두가 프로젝트에 대해 최신 정보를 유지하도록 하기 위해서입니다.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop`는 중요한 업데이트와 결정을 모두에게 알리는 것을 의미합니다. 예를 들어:

`Please keep me in the loop about any changes to the schedule.` - 이는 화자가 어떤 변화가 있으면 업데이트를 받고 싶다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
