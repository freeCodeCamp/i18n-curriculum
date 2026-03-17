---
id: 679cebb26c5d61aaed58b4db
title: Attività 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa sa James del problema con l'ultimo aggiornamento?

## --answers--

Sa esattamente qual è il problema.

### --feedback--

James dice chiaramente di non aver sentito nulla.

---

Non ne sa nulla.

---

Ha già parlato con il client.

### --feedback--

James non menziona di aver parlato con il client.

---

Ha ricevuto un'email riguardo al problema.

### --feedback--

James afferma di non aver sentito nulla.

## --video-solution--

2

# --explanation--

Le risposte brevi con i verbi ausiliari ripetono l'ausiliare dalla domanda per confermare o negare qualcosa. In questo caso, Maria chiede `Did you hear anything?` e James risponde `No, I didn't.` invece di dire semplicemente `No.` Ecco altri esempi:

- `Are you coming to the meeting?` → `Yes, I am.`

- `Have they finished the report?` → `No, they haven't.`

- `Will she be here on time?` → `Yes, she will.`

Le risposte brevi rendono le risposte naturali e complete evitando la ripetizione dell'intera frase.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      },
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
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
