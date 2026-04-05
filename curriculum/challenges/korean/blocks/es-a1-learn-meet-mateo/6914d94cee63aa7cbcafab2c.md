---
id: 6914d94cee63aa7cbcafab2c
title: 작업 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo가 스페인어로 자신의 이름과 직업을 말하고 있습니다.

여기서 동사 `ser`는 자신의 정체성과 직업을 표현하는 데 사용됩니다.

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

이 동사 형태는 동사 `ser`에서 왔으며, 자신이 누구인지 또는 무엇을 하는지 설명할 때 사용됩니다.

---

`Soy`

### --feedback--

이 동사 형태는 동사 `ser`에서 왔으며, 자신이 누구인지 또는 무엇을 하는지 설명할 때 사용됩니다.

# --explanation--


`Soy`는 자신이 누구인지 또는 무엇을 하는지 설명할 때 사용하는 동사입니다. 예를 들어:

`Soy Mateo. Soy ingeniero de software.` - 저는 Mateo입니다. 저는 소프트웨어 엔지니어입니다.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 2.35,
      "finishTimestamp": 5.39
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 1.82,
      "dialogue": {
        "text": "Soy Mateo.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "startTime": 2.5,
      "finishTime": 4.04,
      "dialogue": {
        "text": "Soy ingeniero de software.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 4.54
    }
  ]
}
```
