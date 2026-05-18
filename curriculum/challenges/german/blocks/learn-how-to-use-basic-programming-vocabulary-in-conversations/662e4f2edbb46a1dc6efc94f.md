---
id: 662e4f2edbb46a1dc6efc94f
title: Aufgabe 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` wird verwendet, um etwas zu beschreiben, das häufig vorkommt oder von vielen Menschen geteilt wird. Zum Beispiel `Colds are a common illness during the winter.`. Das bedeutet, dass es ein übliches Gesundheitsproblem ist, mit dem viele Menschen zu dieser Jahreszeit konfrontiert sind.

`Challenge` bezeichnet eine Aufgabe oder Situation, die besondere Anstrengung erfordert, weil sie schwierig ist. Zum Beispiel `Learning to ride a bike was a big challenge for her at first.`. Dieser Satz beschreibt, wie das Fahrradfahren lernen anfangs Schwierigkeiten bereitete.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

Dieses Adjektiv beschreibt etwas, das häufig vorkommt oder üblich ist in einer Gruppe.

---

`challenge`

### --feedback--

Dieses Substantiv bezeichnet eine schwierige Aufgabe oder ein Problem, das Anstrengung erfordert, um es zu lösen oder zu überwinden.

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
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
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
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
