---
id: 68c58aa8c9d2a2dfea45deb7
title: 작업 7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

엘레나는 작별 인사를 하지만 다시 만날 것으로 기대합니다.

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

엘레나가 "나중에 봐"라고 말할 때 사용하는 표현은 무엇인가요?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

이 표현은 작별 인사이지만 더 단호한 느낌입니다. 화자는 다른 표현을 사용합니다.

---

`Chao`

### --feedback--

이것도 비공식적인 작별 인사이지만, 오디오에서 나온 표현은 아닙니다.

---

`¡Hola!`

### --feedback--

이 표현은 "안녕"이라는 일반적인 인사말이지만, 엘레나가 말한 것은 아닙니다.

## --video-solution--

1

# --explanation--

`Hasta luego`는 스페인어에서 흔히 쓰는 작별 인사입니다. "나중에 봐"라는 뜻입니다.

이 표현은 상대를 다시 만날 것으로 기대하지만 꼭 곧 만나는 것은 아닐 때 사용합니다. 예를 들어:  

`Hasta luego, Marta.` – 나중에 봐, 마르타.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
