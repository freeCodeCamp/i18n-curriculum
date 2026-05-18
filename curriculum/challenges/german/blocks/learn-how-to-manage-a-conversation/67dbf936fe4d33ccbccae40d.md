---
id: 67dbf936fe4d33ccbccae40d
title: Aufgabe 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

Dies wird verwendet, um sich für etwas zu entschuldigen, das passiert ist. Denken Sie daran, den Satz großzuschreiben.

# --explanation--

`To be sorry for something` wird verwendet, wenn man sich für eine Handlung entschuldigt, die Unannehmlichkeiten oder Schaden verursacht haben könnte. Zum Beispiel:

`I'm sorry for being late to the meeting.` – Das bedeutet, dass die sprechende Person bedauert, zu spät gekommen zu sein, und sich entschuldigt. Beachten Sie, dass `being` in der `-ing`-Form steht, da es direkt nach `for` (einer Präposition) folgt.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
