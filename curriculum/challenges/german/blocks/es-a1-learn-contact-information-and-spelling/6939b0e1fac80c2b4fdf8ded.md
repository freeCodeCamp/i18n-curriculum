---
id: 6939b0e1fac80c2b4fdf8ded
title: Aufgabe 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

In dieser Aufgabe buchstabiert Basti seinen Spitznamen Buchstabe für Buchstabe.

# --instructions--

Hören Sie sich die Audioaufnahme an und ergänzen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

Dies ist der erste Buchstabe, den Basti verwendet, um seinen Spitznamen zu buchstabieren.

---

`t`

### --feedback--

Dieser Buchstabe folgt auf das „s“ in „Basti“.

---

`i`

### --feedback--

Dies ist der letzte Buchstabe in „Basti“. Hören Sie auf den Vokal am Ende.

# --explanation--

Basti buchstabiert seinen Spitznamen als `B-a-s-t-i`.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
