---
id: 65dabf5eb13aae9ff91c40a2
title: Tarea 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

La frase `search for` significa buscar algo o intentar encontrar algo a través de la exploración. Por ejemplo, `I need to search for my lost keys` significa buscar las llaves.

La palabra `expensive` describe algo que cuesta mucho dinero. Por ejemplo, `That car is too expensive for me` significa que el coche cuesta mucho.

Una `solution` es una respuesta a un problema o una forma de resolver un problema.

`Doesn't/don't have to` se utiliza para expresar que no hay necesidad ni obligación de hacer algo.

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

Esta palabra significa buscar algo cuidadosamente.

---

`for`

### --feedback--

Esta preposición se usa con `search` para indicar lo que estás intentando encontrar.

---

`expensive`

### --feedback--

Esta palabra describe algo que cuesta mucho dinero.

---

`solutions`

### --feedback--

Estas son respuestas o formas de resolver un problema.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
