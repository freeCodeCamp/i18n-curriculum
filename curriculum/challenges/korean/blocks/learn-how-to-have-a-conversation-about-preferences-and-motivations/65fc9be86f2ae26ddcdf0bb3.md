---
id: 65fc9be86f2ae26ddcdf0bb3
title: 작업 36
challengeType: 19
dashedName: task-36
lang: en-US
---


<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

Maria의 말을 듣고 질문에 답하세요.

# --questions--

## --text--

Maria에 따르면 무엇이 그들의 동기를 높일 수 있나요?

## --answers--

큰 팀을 갖는 것

### --feedback--

팀의 크기뿐만 아니라 무엇이 팀을 더 동기부여하게 만드는지 생각해 보세요.

---

오랜 휴식을 취하는 것

### --feedback--

휴식이 동기를 높이는 방법으로 언급되는지 고려하세요.

---

팀이 영감을 받는 모습을 보는 것

---

문제를 빠르게 해결하는 것

### --feedback--

Maria가 동기부여에 대해 강조하는 것이 문제 해결 속도인지 생각해 보세요.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
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
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
