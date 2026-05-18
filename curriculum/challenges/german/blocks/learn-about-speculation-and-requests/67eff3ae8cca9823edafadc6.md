---
id: 67eff3ae8cca9823edafadc6
title: Aufgabe 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Worauf bezieht sich Jakes Frage?

## --answers--

Ob die Updates angewendet wurden.

---

Ob neue Sicherheitsupdates veröffentlicht wurden.

### --feedback--

Jake fragt nicht, ob neue Updates existieren.

---

Wer für Sicherheitsupdates verantwortlich ist.

### --feedback--

Jake fragt nicht nach einer bestimmten Person.

---

Wie Sicherheitsupdates funktionieren.

### --feedback--

Jake geht davon aus, dass Jessica über Sicherheitsupdates Bescheid weiß.

## --video-solution--

1

# --explanation--

Jake möchte wissen, ob jemand überprüft hat, ob alle Updates installiert wurden.

Mit `Have you checked...?` fragt er, ob Jessica etwas überprüft hat.

Mit `whether all security updates were applied` fragt er, ob die Updates erfolgreich installiert wurden.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
