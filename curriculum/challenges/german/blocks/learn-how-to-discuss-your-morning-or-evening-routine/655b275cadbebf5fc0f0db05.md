---
id: 655b275cadbebf5fc0f0db05
title: Aufgabe 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

Das Verb `take` kann je nach Situation unterschiedliche Bedeutungen haben. Im Kontext des Lernens bedeutet `take` an einer Klasse oder einem Kurs teilzunehmen oder diesen zu besuchen. Zum Beispiel:

- `I take online lessons at 7.` – Hier bedeutet `take`, die Lektionen zu besuchen.

- `She is taking a programming course this semester.` – Hier bedeutet `taking`, dass sie für den Kurs eingeschrieben ist und daran teilnimmt.

Wenn Sie also `take lessons` oder `take a course` sagen, sprechen Sie davon, daran teilzunehmen oder sie zu besuchen, nicht etwas physisch zu nehmen.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

Dieses Verb beschreibt die Handlung, an den Lektionen teilzunehmen.

---

`online`

### --feedback--

Dieses Wort bezieht sich auf eine virtuelle Umgebung.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
