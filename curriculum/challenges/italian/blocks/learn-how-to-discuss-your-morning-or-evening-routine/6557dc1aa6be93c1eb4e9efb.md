---
id: 6557dc1aa6be93c1eb4e9efb
title: Attività 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

La parola `if` significa "che ci sia o meno". Per esempio:

`She checks her emails to see if there are any urgent updates.` - Questo significa che lei vuole scoprire se esistono aggiornamenti.

`If` può anche far parte di un'istruzione condizionale, che mostra una situazione possibile e il suo risultato. Per esempio:

`If there are urgent updates, I will reply immediately.` - Questo significa che rispondere dipende dalla condizione di avere aggiornamenti urgenti.

# --questions--

## --text--

Cosa intende Sarah usando `if` nella sua affermazione sul controllare email e messaggi?

## --answers--

Trova sempre aggiornamenti urgenti dal suo team.

### --feedback--

`If` non suggerisce la certezza di trovare aggiornamenti urgenti.

---

A volte ci sono aggiornamenti urgenti, a volte no.

---

Non controlla mai le sue email e i messaggi.

### --feedback--

Sarah afferma invece che controlla le sue email e i messaggi.

---

Controllare le email non fa parte della sua routine.

### --feedback--

Sarah menziona che controllare email e messaggi fa parte della sua routine.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
