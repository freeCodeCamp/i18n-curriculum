---
id: 695fea6173bbffcaa3ffc36d
title: 작업 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

스페인어로 누군가의 이름을 묻는 두 가지 일반적인 방법이 있습니다.

두 가지 모두 일상적인 스페인어에서 사용되며 같은 의미입니다. 단지 구조가 다를 뿐입니다.

# --instructions--

오디오를 듣고 아래 질문에 답하세요.

# --questions--

## --text--

다음 질문 중 오디오에서 들은 내용과 **비슷한** 것은 무엇인가요?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

이 질문은 누군가가 어디에 사는지 묻습니다.

---

`¿Cuál es tu apellido?`

### --feedback--

이 질문은 누군가의 성을 묻습니다.

---

`¿Tienes apodo?`

### --feedback--

이 질문은 누군가 별명이 있는지 묻습니다.

## --video-solution--

1

# --explanation--

Esteban은 `¿Cómo te llamas?`라고 말합니다. 이것은 스페인어로 누군가의 이름을 묻는 가장 일반적인 방법 중 하나입니다. 같은 의미를 가진 또 다른 매우 흔한 질문은 다음과 같습니다:

`¿Cuál es tu nombre?`

두 질문 모두 일상 스페인어에서 사람의 이름을 묻는 데 사용됩니다. 단지 구조가 다를 뿐입니다:

- `¿Cómo te llamas?`는 동사 `llamarse` (호출되다)을 사용합니다.
- `¿Cuál es tu nombre?`는 이름을 명사로 직접 묻습니다.

이 도전 과제에서 정답은 누군가의 이름을 묻는 선택지입니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
