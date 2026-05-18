---
id: 65d6bc21bbb3fb20d47cd7ed
title: Aufgabe 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Jemanden nach der `What's her role?` zu fragen, ist eine Möglichkeit, um herauszufinden, welchen Beruf oder welche Position jemand in einer Gruppe oder einem Projekt hat. `Role` bedeutet den Teil oder die Aufgabe, die jemand in einer bestimmten Situation übernimmt. Zum Beispiel, wenn die `role` einer Person an einer Schule Lehrkraft ist, bedeutet das, dass ihr Beruf darin besteht, Schüler zu unterrichten.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Dieses Wort zeigt, dass Tom über den Beruf oder die Rolle einer weiblichen Person spricht.

---

`role`

### --feedback--

Dieses Wort bedeutet den Beruf oder die Position, die jemand in einer Situation innehat.

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
