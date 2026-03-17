---
id: 656d1becadf67d05d5b27bab
title: Attività 149
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

Proprio come quando hai imparato il pronome `he`, i pronomi come `she` si usano per riferirsi a persone di sesso femminile. Aiutano a evitare ripetizioni nella conversazione. Guarda questa parte del dialogo:

- Sophie: `Oh, come on, Brian.`

- Brian: `But it's true. She's the person to go to if you need help.`

Qui, `she` è usato da Brian per riferirsi a Sophie. Invece di ripetere il nome Sophie, Brian usa il pronome `she` per rendere la conversazione più fluida e evitare ripetizioni.

# --questions--

## --text--

Nel dialogo, quale parola usa Brian per riferirsi a Sophie senza ripetere il suo nome?

## --answers--

`he`

### --feedback--

`He` si riferisce a un maschio.

---

`they`

### --feedback--

`They` è plurale e si riferisce a più persone.

---

`it`

### --feedback--

`It` si usa di solito per cose o animali.

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
