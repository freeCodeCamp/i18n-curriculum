---
id: 68eff70d0ade1c408ecbfeb4
title: Tarefa 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

A letra `d` é chamada de `de`.

No início de uma palavra ou após `l` ou `n`, seu som é mais forte, como na palavra `dos` ("two"). No entanto, é mais suave entre vogais, como na palavra `idea` ("idea").

Um exemplo é `doctor` ("doctor").

# --instructions--

Ouça o áudio e escreva a letra no espaço em branco abaixo.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

Esta é a quarta letra do alfabeto.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
