---
id: 67baf3ed288e8b06f4ab0dfb
title: Attività 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

Queste due parole insieme indicano il senso di unità e collaborazione tra colleghi. La prima parola si riferisce a un gruppo che lavora insieme, la seconda riguarda l'entusiasmo o la motivazione condivisa.

---

`problem-solving`

### --feedback--  

Questa parola composta indica il processo di trovare soluzioni alle sfide. La prima parte si riferisce a un problema da risolvere, la seconda è un verbo che significa trovare una soluzione. Ricorda di usare `-` tra le due parti.

# --explanation--

David ritiene che lavorare in ufficio aiuti a rafforzare `team spirit` (un senso di connessione e unità tra colleghi) e migliori `problem-solving` (trovare soluzioni ai problemi in modo più efficiente).

Sostiene che stare nello stesso spazio fisico renda più facile per i dipendenti collaborare e supportarsi a vicenda.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
