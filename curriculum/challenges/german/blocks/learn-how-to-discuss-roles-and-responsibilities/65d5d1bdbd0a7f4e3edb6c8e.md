---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Aufgabe 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Hören Sie sich die Audioaufnahme an und beantworten Sie die Frage.

# --questions--

## --text--

Worüber fragt Tom?

## --answers--

Ob Anna in der Personalabteilung arbeitet

### --feedback--

Toms Frage bezieht sich speziell darauf, ob die Person mit Anna zusammengearbeitet hat, nicht auf Annas Rolle.

---

Ob Alice schon einmal mit Anna zusammengearbeitet hat.

---

Ob Sie gerne in der Personalabteilung arbeiten

### --feedback--

Die Frage bezieht sich auf vergangene Erfahrungen mit Anna, nicht auf persönliche Gefühle bezüglich der Arbeit in der Personalabteilung.

---

Ob Anna jemals gearbeitet hat

### --feedback--

Der Fokus von Toms Frage liegt auf der Erfahrung des Zuhörers mit Anna, nicht auf Annas beruflicher Vergangenheit.

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
