---
id: 67d3f4b1be72cc09bd3ac4be
title: Aufgabe 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

Dieses Modalverb drückt Notwendigkeit oder Verpflichtung aus.

---

`do`

### --feedback--

Dieses Verb folgt `must`, um eine erforderliche Handlung anzuzeigen.

# --explanation--

`Must` ist ein Modalverb, das verwendet wird, um Notwendigkeit oder Verpflichtung auszudrücken. Zum Beispiel:

- `You must wear a seatbelt while driving.` – Es ist erforderlich.

- `We must submit the report by Friday.` – Es ist notwendig.

Modalverben werden immer vom Infinitiv des Verbs ohne `to` gefolgt.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.02,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
