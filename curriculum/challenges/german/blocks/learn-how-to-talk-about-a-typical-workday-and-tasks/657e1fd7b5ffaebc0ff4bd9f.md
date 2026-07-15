---
id: 657e1fd7b5ffaebc0ff4bd9f
title: Aufgabe 26
challengeType: 19
dashedName: task-26
lang: en-US
---

<!-- (audio) Tom: Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me. -->

# --description--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Warum bedankt sich Tom bei Sophie?

## --answers--

Weil sie ihm eine Zeitmanagement-App gegeben hat.

### --feedback--

Tom bedankt sich für Tipps, nicht dafür, dass sie ihm eine App gegeben hat.

---

Weil er Sophies Tipps hilfreich findet.

---

Weil sie ihn zum Mittagessen eingeladen hat.

### --feedback--

Er bedankt sich für den Rat, nicht für eine Einladung zum Mittagessen.

---

Weil sie ihm bei einem Projekt geholfen hat.

### --feedback--

Toms Dank bezieht sich auf die Tipps zur Organisation, nicht auf konkrete Projektunterstützung.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 58.29,
      "finishTimestamp": 63.00
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
      "finishTime": 5.71,
      "dialogue": {
        "text": "Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 6.21
    }
  ]
}
```
