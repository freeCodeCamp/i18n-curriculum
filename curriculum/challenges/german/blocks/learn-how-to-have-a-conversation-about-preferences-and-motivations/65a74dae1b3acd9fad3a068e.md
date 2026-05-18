---
id: 65a74dae1b3acd9fad3a068e
title: Aufgabe 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` bedeutet, jemanden oder etwas von früher zu erkennen oder die Existenz oder Gültigkeit von etwas anzuerkennen. Zum Beispiel `I recognize your efforts in completing this project.`

`Recognition` ist die Substantivform von `recognize` und bezeichnet die Handlung, jemandem Anerkennung oder Lob für seine Bemühungen oder Leistungen zu geben. Zum Beispiel `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

Dieses Verb bedeutet, eine Tätigkeit oder Übung wiederholt oder regelmäßig auszuführen, um die eigene Fertigkeit zu verbessern oder aufrechtzuerhalten.

---

`recognition`

### --feedback--

Dieses Substantiv bezeichnet die Handlung oder den Prozess, die Bemühungen, Leistungen oder Eigenschaften von jemandem anzuerkennen.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 41.5,
      "finishTimestamp": 47.12
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
      "finishTime": 6.62,
      "dialogue": {
        "text": "For me, I like the idea of practicing my skills and getting recognition for my contributions.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 7.12
    }
  ]
}
```
