---
id: 656d1becadf67d05d5b27bab
title: Aufgabe 149
challengeType: 19
dashedName: task-149
lang: en-US
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

Genau wie Sie beim Lernen über das Pronomen `he` erfahren haben, werden Pronomen wie `she` verwendet, um sich auf weibliche Personen zu beziehen. Sie helfen dabei, Wiederholungen im Gespräch zu vermeiden. Schauen Sie sich diesen Teil des Dialogs an:

- Sophie: `Oh, come on, Brian.`

- Brian: `But it's true. She's the person to go to if you need help.`

Hier verwendet Brian `she`, um sich auf Sophie zu beziehen. Anstatt Sophies Namen zu wiederholen, benutzt Brian das Pronomen `she`, um das Gespräch flüssiger zu gestalten und Wiederholungen zu vermeiden.

# --questions--

## --text--

Welches Wort verwendet Brian im Dialog, um sich auf Sophie zu beziehen, ohne ihren Namen zu wiederholen?

## --answers--

`he`

### --feedback--

`He` bezieht sich auf eine männliche Person.

---

`they`

### --feedback--

`They` ist plural und bezieht sich auf mehrere Personen.

---

`it`

### --feedback--

`It` wird normalerweise für Dinge oder Tiere verwendet.

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
