---
id: 67ddb67d2bbf41bb5dce0fb3
title: Attività 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa possiamo concludere dalla risposta di James?

## --answers--

Deve risolvere prima un problema.

### --feedback--

James non dice nulla riguardo a un altro problema.

---

Sta concludendo la conversazione in modo amichevole.

---

Vuole fissare un incontro adesso.

### --feedback--

Non c'è alcun riferimento a fissare qualcosa.

---

Sta chiedendo ulteriore aiuto.

### --feedback--

James non sta facendo alcuna richiesta.

## --video-solution--

2

# --explanation--

Nelle conversazioni, spesso si omettono parole quando il significato è chiaro. In `Talk to you later`, il soggetto `I'll` (contrazione di `I will`) è omesso. La frase completa sarebbe `I'll talk to you later`. Questo tipo di omissione è comune nel linguaggio informale. Un altro esempio:

`See you tomorrow!` - Questo è un modo più breve per dire `I'll see you tomorrow`.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
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
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
