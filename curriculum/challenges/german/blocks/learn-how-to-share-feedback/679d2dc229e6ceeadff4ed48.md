---
id: 679d2dc229e6ceeadff4ed48
title: Aufgabe 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

Dieses Wort wird verwendet, um die Wiederholung des Verbs `update` aus dem vorherigen Satz zu vermeiden.

---

`delay`

### --feedback--

Dieses Wort bedeutet, etwas zu verschieben oder später als geplant stattfinden zu lassen.

# --explanation--

Anstatt `If we update the software, it might delay other projects.` zu sagen, kürzt James es zu `If we do` ab. Das Wort `do` wird oft verwendet, um die Wiederholung des Verbs oder einer vollständigen Phrase aus dem vorherigen Satz zu vermeiden. Zum Beispiel:

`She wants to join the meeting, and if she does, she'll need the link.` – Anstatt `if she joins the meeting` zu sagen, können Sie `does` verwenden, um es zu ersetzen, und so die Wiederholung vermeiden.

`To delay` bedeutet, etwas später als geplant stattfinden zu lassen. Zum Beispiel:

`The flight was delayed due to bad weather.` – Das bedeutet, dass der Flug verschoben wurde und nicht pünktlich abgeflogen ist.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
