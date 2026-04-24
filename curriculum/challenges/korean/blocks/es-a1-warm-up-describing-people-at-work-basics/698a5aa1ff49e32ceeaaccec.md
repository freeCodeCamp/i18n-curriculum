---
id: 698a5aa1ff49e32ceeaaccec
title: 작업 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

이제 Camila가 스페인어로 `número de teléfono`를 말하는 연습을 하고 있습니다. 이 표현은 "전화번호"라는 뜻입니다.

단어 `número`는 `u` 글자에 강세 표시가 있고, 단어 `teléfono`는 두 번째 글자 `e`에 강세 표시가 있다는 점을 주목하세요.

# --instructions--

오디오를 듣고 아래에 단어를 적으세요.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

이 단어는 스페인어로 문자 그대로 "숫자"를 의미합니다. `u` 글자에 강세 표시를 쓰고 첫 글자를 대문자로 적으세요.

---

`teléfono`

### --feedback--

이 단어는 스페인어로 문자 그대로 "전화"를 의미합니다. 두 번째 글자 `e`에 강세 표시를 쓰는 것을 잊지 마세요.

# --explanation--

`Número de teléfono`는 스페인어로 "전화번호"를 의미합니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
