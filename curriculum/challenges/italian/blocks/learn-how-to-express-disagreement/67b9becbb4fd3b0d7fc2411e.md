---
id: 67b9becbb4fd3b0d7fc2411e
title: Attività 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

Questa parola si riferisce a cose che richiedono più tempo del previsto.

---

`miscommunication`

### --feedback--

Questa parola si riferisce a incomprensioni causate da informazioni poco chiare o errate.

# --explanation--

David è preoccupato che il lavoro asincrono da remoto possa causare `delays` (risposte e progressi più lenti) e `miscommunication` (persone che si fraintendono).

Poiché i dipendenti lavorano in orari diversi, i messaggi possono richiedere più tempo per essere risposti e possono verificarsi incomprensioni se la comunicazione non è chiara.

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
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
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
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
