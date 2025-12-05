---
id: 662e4f2edbb46a1dc6efc94f
title: Tarea 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` se utiliza para describir algo que ocurre con frecuencia o es ampliamente compartido entre muchas personas. Por ejemplo, `Colds are a common illness during the winter.` Esto significa que es un problema de salud usual que muchas personas enfrentan durante esa época del año.

`Challenge` se refiere a una tarea o situación que requiere un esfuerzo especial para lograrse porque es difícil. Por ejemplo, `Learning to ride a bike was a big challenge for her at first.` Esta oración describe cómo aprender a montar en bicicleta presentó dificultades inicialmente.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

Este adjetivo describe algo que ocurre con frecuencia o es usual entre un grupo.

---

`challenge`

### --feedback--

Este sustantivo se refiere a una tarea difícil o problema que requiere esfuerzo para resolverse o superarse.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
