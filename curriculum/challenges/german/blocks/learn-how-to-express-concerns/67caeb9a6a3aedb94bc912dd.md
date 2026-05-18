---
id: 67caeb9a6a3aedb94bc912dd
title: Aufgabe 129
challengeType: 22
dashedName: task-129
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.  

# --fillInTheBlank--

## --sentence--

`They BLANK said the communication isn't great because they BLANK don't hear about changes until it's too late.`  

## --blanks--

`also`  

### --feedback--

Das bedeutet „zusätzlich“ oder „auch“.

---  

`often`  

### --feedback--

Das bedeutet „häufig“ oder „mehrmals“.

# --explanation--

`Also` bedeutet „zusätzlich zu etwas zuvor Erwähntem“. Zum Beispiel:

`She speaks English and also knows French.` – Das bedeutet, sie spricht neben Englisch auch Französisch.  

`Often` bedeutet „häufig“ oder „regelmäßig“. Zum Beispiel:

`He often works late on Fridays.` – Das bedeutet, er arbeitet oft oder regelmäßig freitags spät.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
