---
id: 660684bfc24bf48cfaaf9cfa
title: Aufgabe 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` bedeutet, etwas auszuprobieren. Es ist so, als würde man sagen `Try it`.

Zum Beispiel, wenn Ihr Freund zögert, an einem Programmierkurs teilzunehmen, weil er denkt, dass es zu schwierig sein könnte, könnten Sie sagen `Why not give it a shot? You might enjoy it more than you think.`, um ihn zu ermutigen, es mit diesem Kurs zu versuchen.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

Es ist die Kurzform von `I will`. Sophie drückt damit aus, dass sie den Vorschlag von Brian ausprobieren möchte.

---

`shot`

### --feedback--

In diesem Zusammenhang bedeutet es einen Versuch oder das Ausprobieren von etwas. Sophie sagt, dass sie versuchen wird, was Brian empfohlen hat.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
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
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
