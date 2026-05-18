---
id: 66234ab7decaffe8ecb8327d
title: Aufgabe 56
challengeType: 22
dashedName: task-56
lang: en-US
---

<!-- (Audio) Sophie: Ok, so if I make changes here, do you think it could affect other functionalities? -->

# --description--

`To affect` bedeutet, Einfluss auf etwas zu haben oder etwas zu beeinflussen. In der Programmierung bedeutet `affecting` eines Systems, dass Änderungen in einem Bereich Auswirkungen darauf haben können, wie andere Bereiche funktionieren.

Zum Beispiel zeigt `Changing the database structure could affect the application's performance` an, dass Modifikationen die Leistung beeinflussen könnten.

# --fillInTheBlank--

## --sentence--

`Ok, so if I make changes here, do you think it could BLANK other BLANK?`

## --blanks--

`affect`

### --feedback--

In diesem Zusammenhang bezieht es sich auf die potenziellen Auswirkungen von Sophies Änderungen auf andere Teile des Systems.

---

`functionalities`

### --feedback--

Dabei handelt es sich um die verschiedenen Operationen oder Funktionen des Systems, die von den Änderungen betroffen sein könnten.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 21.3,
      "finishTimestamp": 25.64
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "Okay, so if I make changes here,",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.36,
      "finishTime": 5.34,
      "dialogue": {
        "text": "do you think it could affect other functionalities?",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
