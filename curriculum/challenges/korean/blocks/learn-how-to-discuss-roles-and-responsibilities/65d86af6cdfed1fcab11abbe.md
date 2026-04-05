---
id: 65d86af6cdfed1fcab11abbe
title: 작업 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures`는 장소나 사람들을 안전하게 지키기 위해 고안된 규칙이나 단계를 따라 행동하는 것을 의미합니다. 문제나 위험을 예방하기 위해 특히 직장 등 여러 영역에서 중요합니다.

`everyone` 후에는 `everyone`가 그룹 내 각 개인으로 간주되어 개별적으로 취급되기 때문에 동사의 3인칭 단수형을 사용해야 한다는 것을 배웠습니다.

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

각 개인이 그 행동을 한다는 의미의 동사 단수형입니다.

---

`security`

### --feedback--

이 단어는 사람, 장소 또는 사물을 위험이나 해로부터 안전하게 지키는 것을 의미합니다.

---

`procedures`

### --feedback--

안전을 위해 따라야 하는 단계나 규칙들입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.80,
      "finishTimestamp": 36.56
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
      "finishTime": 3.76,
      "dialogue": {
        "text": "He also ensures that everyone follows security procedures.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.26
    }
  ]
}
```
