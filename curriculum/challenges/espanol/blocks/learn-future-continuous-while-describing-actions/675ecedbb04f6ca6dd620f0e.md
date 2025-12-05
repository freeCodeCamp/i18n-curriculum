---
id: 675ecedbb04f6ca6dd620f0e
title: Tarea 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

Este es un tipo de ciberataque donde un hacker se mete secretamente en medio de dos personas o sistemas que están hablando entre sí. El hacker puede ver, cambiar o robar información que se comparte sin que nadie lo sepa. Esta es una palabra compuesta, recuerda usar `-`. Las primeras letras de la primera y la cuarta palabra están en mayúscula.

---

`attacks`

### --feedback--

Esta palabra en plural significa acciones de hackers o criminales para dañar un sistema informático, robar información o causar problemas.

# --explanation--

`Man-in-the-Middle` (o `MITM`) es un tipo de ataque donde un hacker se interpone secretamente entre dos personas o sistemas que están comunicándose. El hacker escucha o cambia la información que se comparte sin que nadie lo sepa. Por ejemplo:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - El hacker se hizo pasar por el banco, interceptó la información y robó las credenciales de inicio de sesión del usuario. Esto permitió al hacker acceder a la cuenta bancaria sin que el usuario lo supiera.

`Attacks` son acciones de hackers para dañar sistemas informáticos, robar información o causar problemas. Por ejemplo:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - Indica que el hacker envió demasiado tráfico falso al sitio web, haciendo que se caiga o se ralentice. Esto impidió que usuarios reales accedieran, causando interrupciones.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
