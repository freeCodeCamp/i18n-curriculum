---
id: 6629ce6bffd1efa9c6c57eaa
title: Attività 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

La frase `how's it going?` è un modo comune per chiedere a qualcuno come sta o cosa sta succedendo nella sua vita. Viene spesso usata come saluto amichevole.

Per esempio, quando vedi un vecchio amico, potresti dire `Hey, how's it going? I haven't seen you for a while!` Questo è un modo informale per chiedergli della sua vita. Se vuoi chiedere di qualcosa di specifico, come il suo nuovo lavoro, puoi dire `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

Questa contrazione è comunemente usata nei saluti informali. Metti in maiuscola la prima parola.

---

`going`

### --feedback--

Questa parola completa il saluto informale comune che chiede dello stato generale di qualcuno.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
