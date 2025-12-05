---
id: 67d3fba28a7b770be2fef2ce
title: Tarea 6
challengeType: 19
dashedName: task-6
lang: en-US
---

<!-- (Audio) Jessica: Hi Mark, we need to talk about security protocols for the new project. There are a few things you must do to ensure compliance. -->

<!-- SPEAKING -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

Mark no tiene problema en hablar con Jessica y quiere saber qué necesita hacer. ¿Qué diría?

## --answers--

`Sorry, Jessica. I'm too busy right now.`

### --feedback--

Esta respuesta no coincide con la disposición de Mark para hablar.

---

`Sure, Jessica. What do I need to do?`

## --video-solution--

2

# --explanation--

La respuesta correcta muestra que Mark está dispuesto a hablar y quiere conocer los pasos necesarios.

`Sure, Jessica` expresa acuerdo y apertura a la conversación.

`What do I need to do?` muestra que Mark está pidiendo instrucciones, lo cual coincide con la afirmación de Jessica sobre lo que debe hacer para asegurar el cumplimiento.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "Hi, Mark. We need to talk about security protocols for the new project.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 5.22,
      "finishTime": 7.62,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.12
    }
  ]
}
```
