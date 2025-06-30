---
id: 65d6bc21bbb3fb20d47cd7ed
title: Task 43
challengeType: 22
dashedName: task-43
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Zu fragen `What's her role?` ist eine Art, etwas über den Job oder die Position von jemandem, in einer Gruppe oder einem Projekt, herauszufinden. `Role` bedeutet, den Part oder die Aufgabe, die jemand in einer besonderen Situation übernimmt. Zum Beispiel, wenn die `role` von jemandem an einer Schule ein Lehrer ist, bedeutet es, es ist sein Job Schüler zu unterrichten.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Dieses Wort zeigt, Tom spricht über den Job oder den Part einer weiblichen Person in etwas.

---

`role`

### --feedback--

Dieses Wort meint den Job oder die Position, die jemand in einer Situation hat.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
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
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
