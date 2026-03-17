---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Attività 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Ascolta l'audio e rispondi alla domanda.

# --questions--

## --text--

Di cosa sta chiedendo Tom?

## --answers--

Se Anna lavora nelle risorse umane

### --feedback--

La domanda di Tom riguarda specificamente se la persona ha lavorato con Anna, non il ruolo di Anna.

---

Se Alice ha avuto esperienza a lavorare con Anna.

---

Se ti piace lavorare nelle risorse umane

### --feedback--

La domanda riguarda l'esperienza passata con Anna, non i sentimenti personali sul lavorare nelle risorse umane.

---

Se Anna ha mai lavorato

### --feedback--

Il focus della domanda di Tom è sull'esperienza dell'ascoltatore con Anna, non sulla storia lavorativa di Anna.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
