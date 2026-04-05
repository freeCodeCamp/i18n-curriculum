---
id: 67c4bacefd5097faecca40d4
title: 작업 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Bob이 알고 싶어 하는 것은 무엇인가요?  

## --answers--

프로젝트를 취소해야 하는지.  

### --feedback--

Bob은 프로젝트 취소에 대해 묻고 있지 않습니다.  

---

더 적게 일하는 것이 더 나을지.  

### --feedback--

Bob은 더 적게 일하는 것이 아니라 더 많이 일하자고 제안하고 있습니다.  

---

팀이 이미 문제를 해결했는지.  

### --feedback--

Bob은 자신의 제안이 도움이 될지 묻고 있을 뿐, 문제가 이미 해결되었는지 묻고 있지 않습니다.  

---

추가 근무가 상황을 개선할지.  

## --video-solution--

4  

# --explanation--

조동사나 법조동사(`wouldn't`, `isn't`, `doesn't`)가 포함된 부정문 질문은 직접적인 `yes`/`no` 대답을 요구하며, 화자가 긍정적인 답변을 기대한다는 뜻입니다 — 이 경우 Bob은 추가 근무가 도움이 될 것이라고 가정합니다. 또 다른 예:

`Doesn't this plan seem like a good idea?` - 화자는 청자가 계획이 좋다고 동의할 것으로 기대합니다.

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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
