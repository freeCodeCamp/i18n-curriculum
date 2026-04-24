---
id: 698a5b056fac9afc70ef3cad
title: 10번째 도전 과제
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

지금까지 배운 몇몇 나라를 검토해 보겠습니다.

| 국가 | 여성형 국적 | 남성형 국적 |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

스페인어에서 국가 이름은 고유명사이며 항상 대문자로 시작합니다.

국적 `brasileño`/`brasileña`와 `panameño`/`panameña`는 독특한 글자 `eñe` (`ñ`)를 사용한다는 점에 주목하세요.

Camila가 이 나라들 중 몇 개를 연습하고 있습니다. 어떤 나라들인지 알아맞혀 보세요.

# --instructions--

오디오를 듣고 아래 수열을 완성하세요.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

이 나라는 남아메리카에서 가장 크며 대문자로 시작합니다.

---

`Panamá`

### --feedback--

이 나라는 유명한 운하로 알려져 있습니다. 마지막 글자 `a`에 강세 부호를 포함하고 첫 글자를 대문자로 쓰는 것을 잊지 마세요.

# --explanation--

수열은 `Brasil` - `Colombia` - `Panamá`입니다.

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
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
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
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
