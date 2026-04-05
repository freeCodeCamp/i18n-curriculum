---
id: 69399bbb6d7a7bfeedaddd96
title: 작업 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

동사 `escribir`는 "쓰다"라는 뜻입니다. 스페인어 사용자가 단어가 어떻게 쓰이는지 또는 철자가 어떻게 되는지 설명할 때, 종종 표현 `se escribe`을 사용합니다.

이 형태는 동사 `escribir`에서 유래했으며, 이름, 이메일 또는 다른 단어를 철자 하나하나 말할 때 흔히 사용합니다. 예를 들어:

- `Carlos se escribe C-a-r-l-o-s.` – Carlos는 C-a-r-l-o-s로 철자합니다.

- `Mi apellido se escribe con z.` – 내 성은 z로 철자합니다.

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

이 짧은 단어는 무언가가 어떻게 쓰이는지 설명할 때 자주 쓰이는 표현의 일부입니다.

---

`escribe`

### --feedback--

이 동사 형태는 `escribir`에서 유래했으며, 단어를 철자할 때 사용합니다.

# --explanation--

`Se escribe`은 단어나 이름이 어떻게 쓰이는지 설명할 때 사용합니다.

이것은 동사 `escribir`에서 유래했으며, 무언가를 철자 하나하나 말하기 전에 흔히 사용합니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
