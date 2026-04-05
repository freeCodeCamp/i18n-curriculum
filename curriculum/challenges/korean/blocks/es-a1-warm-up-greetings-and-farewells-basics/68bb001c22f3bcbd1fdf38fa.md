---
id: 68bb001c22f3bcbd1fdf38fa
title: 작업 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena가 "안녕"이라고 말하려고 합니다. 스페인어에서 사람들이 만날 때 이 단어를 항상 듣게 됩니다.

# --instructions--

오디오를 듣고 아래 질문에 답하세요.
정답은 **하나**뿐입니다. 도움이 필요하면 수업 하단의 **설명**을 클릭하세요.

# --questions--

## --text--

Elena가 "안녕"이라고 말할 때 사용하는 단어는 무엇인가요?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

이 단어는 화자가 말한 것과 반대 의미입니다. 추가 도움이 필요하면 설명 섹션을 열어보세요.

---

`Chao`

### --feedback--

이 단어는 화자가 말한 것과 반대 의미입니다. 추가 도움이 필요하면 설명 섹션을 열어보세요.

---

`Buenos días`

### --feedback--

이 단어는 "좋은 아침"이라는 뜻이지만, 오디오에서 들은 단어는 아닙니다.

## --video-solution--

1

# --explanation--

단어 `Hola`는 인사말입니다. 누군가를 만날 때 사용하며, "Hello"나 "Hi"와 비슷합니다. 예를 들어:

`¡Hola, buenos días!` – 안녕, 좋은 아침! 

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
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
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
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
