---
id: 6914d94cee63aa7cbcafab2c
title: Zoezi la 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo anataja jina lake na taaluma yake kwa Kihispania.

Hapa, kitenzi `ser` kinatumika kudhihirisha utambulisho wake na taaluma yake.

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

Fomu hii ya kitenzi inatokana na kitenzi `ser` na hutumika kuelezea ni nani wewe au unafanya nini.

---

`Soy`

### --feedback--

Fomu hii ya kitenzi inatokana na kitenzi `ser` na hutumika kuelezea ni nani wewe au unafanya nini.

# --explanation--


`Soy` ni kitenzi kinachotumika kuelezea ni nani wewe au unafanya nini. Kwa mfano:

`Soy Mateo. Soy ingeniero de software.` - Mimi ni Mateo. Mimi ni mhandisi wa programu.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 2.35,
      "finishTimestamp": 5.39
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 1.82,
      "dialogue": {
        "text": "Soy Mateo.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "startTime": 2.5,
      "finishTime": 4.04,
      "dialogue": {
        "text": "Soy ingeniero de software.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 4.54
    }
  ]
}
```
