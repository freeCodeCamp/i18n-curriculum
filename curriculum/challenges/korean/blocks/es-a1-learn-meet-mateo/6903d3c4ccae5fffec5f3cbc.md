---
id: 6903d3c4ccae5fffec5f3cbc
title: 작업 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

Mateo의 국적은 무엇인가요?

## --answers--

`Chileno`

### --feedback--

이 선택지는 칠레 출신을 가리킵니다.

---

`Peruano`

### --feedback--

이 단어는 페루 출신을 나타냅니다.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

이것은 콜롬비아 출신 여성에 해당하며, 끝의 `-a`는 여성형을 나타내 Mateo와 일치하지 않습니다.

## --video-solution--

3

# --explanation--

`Soy` ("나는 ~이다")는 동사 `ser`에서 왔으며 정체성, 국적, 직업을 표현할 때 사용합니다. 예를 들어:

- `Soy chilena.` – 나는 칠레 사람입니다. (여성형)

- `Soy chileno.` – 나는 칠레 사람입니다. (남성형)

- `Soy puertorriqueña` - 나는 푸에르토리코 사람입니다. (여성형)

- `Soy puertorriqueño` - 나는 푸에르토리코 사람입니다. (남성형)

- `Soy canadiense.` – 나는 캐나다 사람입니다. (중성형)

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
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
