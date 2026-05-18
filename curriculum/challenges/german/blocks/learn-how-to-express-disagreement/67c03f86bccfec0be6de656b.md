---
id: 67c03f86bccfec0be6de656b
title: Aufgabe 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was kommuniziert Anna?

## --answers--

Sie ist völlig anderer Meinung als Bob und weist seine Sorge zurück.

### --feedback--

Anna erkennt Bobs Standpunkt an, bevor sie ihre eigene Meinung äußert.

---

Sie versteht Bobs Sorge, hält aber Flexibilität dennoch für die bessere Option.

---

Sie versteht Bobs Sorge nicht.

### --feedback--

Anna versteht Bobs Argument.

---

Sie stimmt Bob zu und ändert ihre Meinung.

### --feedback--

Anna stimmt Bob nicht vollständig zu.

## --video-solution--

2

# --explanation--

Anna verwendet `I see your point, but`, um zu zeigen, dass sie Bobs Sorge versteht, während sie eine andere Meinung präsentiert.

Sie glaubt, dass Flexibilität eine bessere Lösung ist, als sich an eine Kategorie zu halten.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
