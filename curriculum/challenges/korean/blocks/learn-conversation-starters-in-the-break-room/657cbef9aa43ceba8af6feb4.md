---
id: 657cbef9aa43ceba8af6feb4
title: 작업 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

무언가를 아주 좋아할 때, `enjoy`라고 말할 수 있습니다. 이것은 어떤 것이 당신을 행복하게 한다는 것을 표현하는 간단한 방법입니다.

예를 들어, `I enjoy playing video games`라고 말할 수 있습니다. 이것은 비디오 게임을 하는 것이 당신에게 재미있다는 뜻입니다.

대화에서 Sophie는 Maria가 직장에서 즐기는 무언가에 대해 말합니다.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

이 동사는 Maria가 무언가를 좋아하고 그것을 하면서 행복함을 느낀다는 뜻입니다. `-s`로 끝납니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
