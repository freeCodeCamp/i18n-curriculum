---
id: 65d6bc21bbb3fb20d47cd7ed
title: 작업 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

`What's her role?`를 묻는 것은 누군가의 직업이나 그룹 또는 프로젝트 내 위치를 알아보는 방법입니다. `Role`는 특정 상황에서 누군가가 맡은 부분이나 직무를 의미합니다. 예를 들어, 누군가의 `role`가 학교에서 교사라면, 그 사람의 직업이 학생들을 가르치는 것임을 뜻합니다.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

이 단어는 톰이 여성의 직업이나 어떤 일에서 맡은 부분에 대해 말하고 있음을 보여줍니다.

---

`role`

### --feedback--

이 단어는 누군가가 어떤 상황에서 맡은 직업이나 위치를 의미합니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
