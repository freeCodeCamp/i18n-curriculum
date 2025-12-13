---
id: 68feee5abac0c3186f90b3ad
title: Tarea 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Cuál opción es el Pinyin correcto para lo que dice Wang Hua?

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

El tono de la primera sílaba no coincide con lo que escuchas en el audio.

---

`mín zi`

### --feedback--

El final de la primera sílaba no es lo que ella dice.

---

`míng zhī`

### --feedback--

La inicial de la segunda sílaba es diferente de lo que escuchas en el audio.

## --video-solution--

1

# --explanation--

Wang Hua está diciendo `míng zi`. La primera sílaba tiene una final nasal `ing` y un tono ascendente. La segunda sílaba es una sílaba completa con un tono neutral, pronunciada suavemente.

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_warmup_vocabulary.mp3",
      "startTime": 1,
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
