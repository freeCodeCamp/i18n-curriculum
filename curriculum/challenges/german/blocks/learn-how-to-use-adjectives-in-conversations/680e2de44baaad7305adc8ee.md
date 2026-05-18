---
id: 680e2de44baaad7305adc8ee
title: Aufgabe 46
challengeType: 22
dashedName: task-46
lang: en-US
---

<!-- (Audio) Josh: I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und ergänzen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`I'll draft a new quote with these specifics and send it over to you by tomorrow. BLANK for you?`

## --blanks--

`Does that work`

### --feedback--

Diese drei Wörter zusammen werden verwendet, um höflich zu fragen, ob ein Plan oder Vorschlag akzeptabel ist. Der erste Buchstabe des ersten Wortes ist großgeschrieben.

# --explanation--

`Does that work` ist eine höfliche Art zu überprüfen, ob ein Vorschlag oder eine Vereinbarung für jemanden in Ordnung ist. Zum Beispiel:

`We can meet at 3 PM. Does that work for you?` – Dies fragt, ob die Zeit für die andere Person gut oder passend ist.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Josh",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.14,
      "finishTimestamp": 75.94
    }
  },
  "commands": [
    {
      "character": "Josh",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Josh",
      "startTime": 1,
      "finishTime": 6.8,
      "dialogue": {
        "text": "I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you?",
        "align": "center"
      }
    },
    {
      "character": "Josh",
      "opacity": 0,
      "startTime": 7.3
    }
  ]
}
```
