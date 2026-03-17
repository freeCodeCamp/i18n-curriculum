---
id: 68c58aa8c9d2a2dfea45deb7
title: Attività 7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena si sta salutando, ma si aspetta di rivederti.

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Quale frase usa Elena per dire "a dopo"?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

Questo è un saluto di addio, ma è più definitivo. La persona che parla usa una frase diversa.

---

`Chao`

### --feedback--

Anche questo è un modo informale per dire addio, ma non è quello nell'audio.

---

`¡Hola!`

### --feedback--

Significa "Ciao", un saluto generico, ma non è quello che dice Elena.

## --video-solution--

1

# --explanation--

`Hasta luego` è un modo comune per dire addio in spagnolo. Si traduce con "a dopo".

Si usa quando ti aspetti di rivedere la persona, ma non necessariamente presto. Per esempio:  

`Hasta luego, Marta.` – A dopo, Marta.

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
