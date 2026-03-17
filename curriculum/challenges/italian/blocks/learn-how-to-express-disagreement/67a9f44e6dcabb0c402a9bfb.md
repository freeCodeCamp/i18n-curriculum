---
id: 67a9f44e6dcabb0c402a9bfb
title: Attività 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa vuole sapere Bob?

## --answers--

Se i dipendenti hanno già comprato mobili per l'ufficio.

### --feedback--

Bob non sta chiedendo una conferma sugli acquisti.

---

Quanto costano i mobili per l'ufficio.

### --feedback--

Bob non chiede del prezzo.

---

Se l'azienda aumenterà il contributo.

### --feedback--

Bob non sta parlando di cambiamenti al contributo.

---

Se Anna pensa che usare il contributo per i mobili dell'ufficio sia una buona idea.

## --video-solution--

4

# --explanation--

Bob chiede, `Do you think that's a good idea?` Questo è un modo per chiedere l'opinione di qualcuno su una proposta o un piano. Ecco altri modi per chiedere un'opinione:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

In questo dialogo, Bob si riferisce ai dipendenti che usano il contributo per il lavoro da remoto per i mobili dell'ufficio. Invece di esprimere la sua opinione, chiede ad Anna cosa ne pensa.

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
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
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
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
