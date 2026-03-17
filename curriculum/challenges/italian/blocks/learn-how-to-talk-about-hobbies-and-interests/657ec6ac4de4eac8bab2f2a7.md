---
id: 657ec6ac4de4eac8bab2f2a7
title: Attività 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

La parola `date` può essere usata in contesti diversi. Anche se spesso indica un incontro romantico tra due persone, può anche semplicemente significare un appuntamento o un evento programmato tra amici o colleghi. Per esempio:

`Let's set a date for our next meeting.` - Qui `date` è usato in modo non romantico, riferendosi alla scelta di un giorno per un incontro.

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

Questa parola specifica il tipo di attività pianificata, indicando che si tratta di un'uscita in bicicletta.

---

`date`

### --feedback--

Questa parola si riferisce a un incontro o evento programmato.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
