---
id: 65fc9c5db0a80e6e3d3cfce5
title: 작업 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Brian: Yeah, wow. You know what? This was really a motivating talk. Thanks for sharing your thoughts. -->

# --description--

이 대화 부분에서 Brian은 강연이 자신에게 어떤 느낌을 주었는지 이야기하고 Maria가 자신의 관점을 공유해 준 것에 감사를 전합니다.

# --fillInTheBlank--

## --sentence--

`Yeah, wow. You know what? This was really a BLANK talk. Thanks for BLANK your thoughts.`

## --blanks--

`motivating`

### --feedback--

이 단어는 에너지를 주거나 무언가를 하게 만드는 이유를 뜻합니다. 누군가의 말이 더 열심히 하도록 만들 때와 같습니다.

---

`sharing`

### --feedback--

이 단어는 자신이 가진 것을 다른 사람에게 주는 것을 의미합니다. 누군가에게 자신의 생각이나 감정을 말해 주는 것과 같습니다.

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Brian",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.38,
      "finishTimestamp": 76.10
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.72,
      "dialogue": {
        "text": "Yeah, wow. You know what? This was a really motivating talk. Thanks for sharing your thoughts.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.22
    }
  ]
}
```
