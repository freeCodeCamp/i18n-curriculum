---
id: 656d1becadf67d05d5b27bab
title: Task 149
challengeType: 19
dashedName: task-149
---

# --description--

So wie du das Pronomen `he` kennengelernt hast, werden Pronomen wie `she` verwendet, um sich auf weibliche Personen zu beziehen. Sie helfen, Wiederholungen im Gespräch zu vermeiden. Siehe dir diesen Teil des Dialogs an:

Sophie: `Oh, come on, Brian!`

Brian: `But it is true. Sie ist die Person, zu der du gehst, wenn du Hilfe brauchst!`

Hier wird `She` von Brian verwendet, um auf Sophie zu verweisen. Anstatt Sophies Namen zu wiederholen, verwendet Brian das Pronomen `she`, um das Gespräch flüssiger zu gestalten und Redundanzen zu vermeiden.

# --questions--

## --text--

Welches Wort benutzt Brian in dem Dialog, um sich auf Sophie zu beziehen, ohne ihren Namen zu nennen?

## --answers--

`he`

### --feedback--

`He` bezieht sich auf einen Mann.

---

`they`

### --feedback--

`They` ist Plural und bezieht sich auf mehr als eine Person.

---

`it`

### --feedback--

`It` is usually used for things or animals.

---

`she`

### --feedback--

`She` refers to a female person.

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
