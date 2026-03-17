---
id: 679d3cfdaca2eb81f8d81cf7
title: Attività 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa sta chiedendo Maria a James di fare?

## --answers--

Di risolvere il problema immediatamente.

### --feedback--

Maria non sta chiedendo a James di risolvere il problema subito.

---

Di segnalare il problema al client.

### --feedback--

Maria non menziona di informare il client.

---

Di indagare sul problema.

---

Di ignorare il problema per ora.

### --feedback--

Maria non sta chiedendo a James di ignorare il problema.

## --video-solution--

3

# --explanation--

`Can` è comunemente usato per fare richieste educate, chiedendo a qualcuno di fare qualcosa in modo informale. Per esempio:

`Can you send me the report by noon?` - Questo è un modo cortese per chiedere a qualcuno di inviare un rapporto.

In questo dialogo, Maria sta chiedendo a James di indagare sul problema.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
