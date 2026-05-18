---
id: 67b9becbb4fd3b0d7fc2411e
title: Aufgabe 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

Hören Sie sich das Audio an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

Dieses Wort bezieht sich auf Dinge, die länger dauern als erwartet.

---

`miscommunication`

### --feedback--

Dieses Wort bezieht sich auf Missverständnisse, die durch unklare oder falsche Informationen entstehen.

# --explanation--

David befürchtet, dass asynchrone Remote-Arbeit `delays` (langsamere Antworten und Fortschritte) und `miscommunication` (Missverständnisse zwischen den Personen) verursachen könnte.

Da Mitarbeitende zu unterschiedlichen Zeiten arbeiten, können Nachrichten länger unbeantwortet bleiben, und es können Missverständnisse auftreten, wenn die Kommunikation nicht klar ist.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
