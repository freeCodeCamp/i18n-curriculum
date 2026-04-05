---
id: 657eebaa042b5cda6ec2dac9
title: 도전 과제 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?`는 불신, 놀라움, 또는 때때로 누군가가 농담하는지 확인할 때 사용합니다.

친구가 길에서 스케이트보드를 타는 개를 봤다고 말하면, 놀라서 `Are you kidding?`라고 말하며 정말 진심인지 아니면 농담인지 묻고 싶을 수 있습니다.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

이 동사는 어떤 말에 대해 불신이나 놀라움을 표현하는 구문에서 사용합니다. `-ing`로 끝납니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
