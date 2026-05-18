---
id: 6914d94cee63aa7cbcafab2c
title: Aufgabe 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo nennt seinen Namen und seinen Beruf auf Spanisch.

Hier wird das Verb `ser` verwendet, um seine Identität und seinen Beruf auszudrücken.

# --instructions--

Hören Sie sich das Audio an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

Diese Verbform stammt vom Verb `ser` und wird verwendet, um zu beschreiben, wer Sie sind oder was Sie tun.

---

`Soy`

### --feedback--

Diese Verbform stammt vom Verb `ser` und wird verwendet, um zu beschreiben, wer Sie sind oder was Sie tun.

# --explanation--


`Soy` ist ein Verb, das verwendet wird, um zu beschreiben, wer Sie sind oder was Sie tun. Zum Beispiel:

`Soy Mateo. Soy ingeniero de software.` – Ich bin Mateo. Ich bin Softwareingenieur.

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

