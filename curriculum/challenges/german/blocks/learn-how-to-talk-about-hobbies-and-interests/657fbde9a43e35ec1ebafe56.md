---
id: 657fbde9a43e35ec1ebafe56
title: Aufgabe 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

Hören Sie sich das Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was drückt der Satz `Would you like to come?` in diesem Zusammenhang aus?

## --answers--

Eine Einladung ablehnen.

### --feedback--

Der Satz bedeutet nicht „nein“ zu sagen. Es geht darum, eine Einladung auszusprechen.

---

Eine Einladung aussprechen.

---

Dankbarkeit ausdrücken.

### --feedback--

Der Satz bedeutet nicht „danke“. Es geht darum, jemanden einzuladen.

---

Nach Informationen fragen.

### --feedback--

Der Satz ist keine Frage, um Informationen zu erhalten, sondern eine höfliche Einladung zu einer Veranstaltung.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
