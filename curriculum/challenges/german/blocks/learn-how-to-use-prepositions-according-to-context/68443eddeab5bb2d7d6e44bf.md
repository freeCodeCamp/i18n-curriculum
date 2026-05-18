---
id: 68443eddeab5bb2d7d6e44bf
title: Aufgabe 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und ergänzen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

Dieser zweiteilige Ausdruck bedeutet, etwas für die Nutzung vorzubereiten oder zu arrangieren.

---

`break room`

### --feedback--

Dieser zweiteilige Ausdruck bezeichnet einen Raum, in dem Mitarbeitende sich von der Arbeit erholen können.

# --explanation--

`Set up` bedeutet, etwas für die Nutzung vorzubereiten oder zu arrangieren. Zum Beispiel:

`We need to set up the new computers before the meeting.` – Das bedeutet, sie einsatzbereit zu machen.

`Break room` ist ein Ort im Büro, an dem Menschen sich ausruhen, essen oder entspannen. Zum Beispiel:

`Let's meet in the break room after lunch.` – Das bezeichnet einen Raum, der zum Pausieren gedacht ist.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
