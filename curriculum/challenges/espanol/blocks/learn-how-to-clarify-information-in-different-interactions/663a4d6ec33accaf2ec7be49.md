---
id: 663a4d6ec33accaf2ec7be49
title: Tarea 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

A `smile` es lo que ocurre cuando levantas las comisuras de tu boca para mostrar felicidad. Es algo que haces con tu cara cuando estás feliz o quieres ser amable.

`Friendly` describe a alguien que es amable, simpático y fácil de hablar. Una persona amistosa hace que otros se sientan cómodos y felices.

`A friendly smile` es una sonrisa que muestra que estás siendo amable y acogedor. Hace que los demás se sientan bien y muestra que quieres ser amigo.

Escucha el audio y llena los espacios en blanco.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

Este espacio en blanco describe a alguien que es simpático, fácil de hablar y acogedor.

---

`smile`

### --feedback--

La acción que haces cuando quieres mostrar felicidad con tu boca.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
