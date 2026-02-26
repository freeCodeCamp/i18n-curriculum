---
id: 6939b0e1fac80c2b4fdf8ded
title: Tarefa 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe b-a-s-t-i. -->

# --description--

Nesta tarefa, Basti soletra seu apelido letra por letra.

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`b`

### --feedback--

Esta é a primeira letra que Basti usa para começar a soletrar seu apelido.

---

`t`

### --feedback--

Esta letra vem depois do "s" em "Basti".

---

`i`

### --feedback--

Esta é a letra final em "Basti". Ouça o som da vogal no final.

# --explanation--

Basti soletra seu apelido como `b-a-s-t-i`.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 26.74
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.14,
      "dialogue": {
        "text": "Se escribe b-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.64
    }
  ]
}
```
