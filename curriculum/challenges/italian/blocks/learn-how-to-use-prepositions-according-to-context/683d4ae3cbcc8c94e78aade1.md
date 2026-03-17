---
id: 683d4ae3cbcc8c94e78aade1
title: Attività 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa sta spiegando Bob?

## --answers--

Che l'uscita di emergenza è bloccata.

### --feedback--

Bob non dice che l'uscita è bloccata — menziona solo la sua posizione.

---

Che la porta sul retro ha bisogno di una nuova serratura.

### --feedback--

Bob non parla di serrature o di una porta sul retro che necessita di riparazioni.

---

Che la stanza del server deve essere pulita.

### --feedback--

Nella frase di Bob non c'è alcun riferimento alla pulizia.

---

Che qualcosa si trova vicino all'uscita di emergenza.

## --video-solution--

4

# --explanation--

Bob dice, `Exactly. It's in the back, next to the emergency exit`. Questo significa che sta confermando la posizione di qualcosa — proprio accanto all'uscita di emergenza.

Non parla di riparazioni, pulizie o problemi.

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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
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
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
