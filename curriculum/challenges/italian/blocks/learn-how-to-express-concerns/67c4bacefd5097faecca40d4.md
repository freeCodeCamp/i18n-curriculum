---
id: 67c4bacefd5097faecca40d4
title: Attività 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa vuole sapere Bob?  

## --answers--

Se dovrebbero cancellare il progetto.  

### --feedback--

Bob non sta chiedendo di cancellare il progetto.  

---

Se sarebbe meglio lavorare meno ore.  

### --feedback--

Bob sta suggerendo di lavorare più ore, non meno.  

---

Se il team ha già risolto il problema.  

### --feedback--

Bob chiede se il suo suggerimento aiuterà, non se il problema è già risolto.  

---

Se lavorare ore extra migliorerà la situazione.  

## --video-solution--

4  

# --explanation--

Usare negazioni nelle domande con verbi ausiliari o modali (come `wouldn't`, `isn't`, `doesn't`), che richiedono risposte dirette `yes`/`no`, suggerisce che chi parla si aspetta una risposta positiva — in questo caso Bob presume che lavorare ore extra aiuterà. Un altro esempio:

`Doesn't this plan seem like a good idea?` - Chi parla si aspetta che l'ascoltatore concordi che il piano è buono.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
