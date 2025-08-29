---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Aufgabe 35
challengeType: 19
dashedName: task-35
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Höre dir die Audio an und beantworte die Frage.

# --questions--

## --text--

Worum geht es Tom?

## --answers--

Ob Anna in der Personalabteilung arbeitet

### --feedback--

In Toms Frage geht es speziell darum, ob die Person mit Anna gearbeitet hat, nicht um Annas Rolle.

---

Ob Alice bereits Erfahrungen gemacht hat mit Anna zu arbeiten.

---

Ob du es magst in der Personalabteilung zu arbeiten

### --feedback--

In der Frage geht es um vergangene Erfahrungen mit Anna, nicht um persönliche Gefühle über das Arbeiten in der Personalabteilung.

---

Ob Anna jemals gearbeitet hat

### --feedback--

Der Fokus von Toms Frage liegt auf der Erfahrung des Zuhörers mit Anna, nicht auf Annas Arbeitshistorie.

## --video-Lösung--

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
