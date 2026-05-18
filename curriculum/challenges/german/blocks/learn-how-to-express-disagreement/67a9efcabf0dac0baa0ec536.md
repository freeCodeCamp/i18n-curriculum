---
id: 67a9efcabf0dac0baa0ec536
title: Aufgabe 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

Denken Sie darüber nach, was Menschen brauchen, um ihren Heimarbeitsplatz zu verbessern. Dazu gehören Schreibtische, Stühle und Regale.

# --explanation--

`Office furniture` bezieht sich auf Schreibtische, Stühle, Regale und andere Gegenstände, die an einem Arbeitsplatz verwendet werden.

In diesem Dialog spricht Bob darüber, wie Mitarbeitende ihren Zuschuss für das Arbeiten von zu Hause ausgeben. Da das Arbeiten von zu Hause aus eine komfortable und produktive Einrichtung erfordert, nutzen viele den Zuschuss, um Büromöbel wie ergonomische Stühle oder geräumige Schreibtische zu kaufen.

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
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
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
