---
id: 68fa8b4ecf2cf649ff55f7fd
title: Aufgabe 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welcher Buchstabe wird in dieser Audioaufnahme als **zweiter** ausgesprochen?

## --answers--

`b`

### --feedback--

Der Buchstabe `b` hat einen anderen Klang.

---

`x`

---

`z`

### --feedback--

Der Buchstabe `z` hat einen anderen Klang.

---

`m`

### --feedback--

Der Buchstabe `m` hat einen anderen Klang.

## --video-solution--

2

# --explanation--

Dies sind die drei Buchstaben, die in der Audioaufnahme ausgesprochen werden: `b`, `x`, `z`.

Der Buchstabe `x` ist der zweite. Daher ist `x` die richtige Antwort.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
