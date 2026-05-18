---
id: 657fb5afeeba2de5d01dda0e
title: Aufgabe 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

Hören Sie sich das Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Wie reagiert Tom auf Sarahs Einladung zur Sci-Fi-Konvention?

## --answers--

Nimmt sofort an.

### --feedback--

Tom nimmt die Einladung nicht an. Er erwähnt, dass er kein Interesse an Sci-Fi hat.

---

Lehnt höflich ab.

---

Zeigt Desinteresse.

### --feedback--

Obwohl Tom sein Desinteresse ausdrückt, geht seine Antwort eher darauf ein, die Einladung höflich abzulehnen, als nur Desinteresse zu zeigen.

---

Ignoriert die Einladung.

### --feedback--

Tom nimmt die Einladung wahr und antwortet, er ignoriert sie also nicht.

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
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
