---
id: 65fc9be86f2ae26ddcdf0bb3
title: Aufgabe 36
challengeType: 19
dashedName: task-36
lang: en-US
---


<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

Hören Sie Maria zu und beantworten Sie die Frage.

# --questions--

## --text--

Was kann laut Maria ihre Motivation steigern?

## --answers--

Ein großes Team zu haben

### --feedback--

Überlegen Sie, was genau das Team motivierter macht, nicht nur die Größe des Teams.

---

Eine lange Pause machen

### --feedback--

Überlegen Sie, ob Pausen als Mittel zur Steigerung der Motivation erwähnt werden.

---

Das Team inspiriert zu sehen

---

Probleme schnell zu lösen

### --feedback--

Reflektieren Sie, ob die Geschwindigkeit beim Lösen von Problemen das ist, was Maria als motivierend hervorhebt.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
