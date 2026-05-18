---
id: 679aa5040bedaccedf33d6d8
title: Aufgabe 45
challengeType: 19
dashedName: task-45
lang: en-US
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Warum denkt Brian, dass es nicht gut ist, wenn alle gleich denken?

## --answers--

Weil sie wichtige Details übersehen könnten.

---

Weil dadurch Entscheidungen schneller getroffen würden.

### --feedback--

Brian sagt nicht, dass Einigkeit vorteilhaft ist.

---

Weil Meinungsverschiedenheiten immer Probleme verursachen.

### --feedback--

Brian sagt tatsächlich, dass gewisse Meinungsverschiedenheiten nützlich sind, nicht dass sie Probleme verursachen.

---

Weil niemand seine Meinung äußern würde.

### --feedback--

Brian spricht nicht davon, dass Menschen sich weigern, ihre Meinung zu teilen.

## --video-solution--

1

# --explanation--

Die Struktur `if + verb in the Simple Past` gefolgt von `might` im Folgesatz wird verwendet, um eine hypothetische Situation mit einem möglichen Ergebnis zu beschreiben. Zum Beispiel:

`If you studied more, you might pass the exam.` – Das bedeutet, dass es eine Möglichkeit gibt zu bestehen, wenn die Person mehr lernt.

In diesem Dialog drückt `If we all agreed on everything, we might miss important details` eine mögliche negative Folge vollständiger Einigkeit aus.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
