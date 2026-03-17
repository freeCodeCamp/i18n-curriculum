---
id: 675ecedbb04f6ca6dd620f0e
title: Attività 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

Si tratta di un tipo di attacco informatico in cui un hacker si inserisce di nascosto tra due persone o sistemi che comunicano tra loro. L'hacker può vedere, modificare o rubare le informazioni scambiate senza che nessuno se ne accorga. È una parola composta, ricorda di usare `-`. Le prime lettere della prima e della quarta parola sono maiuscole.

---

`attacks`

### --feedback--

Questa parola al plurale indica azioni compiute da hacker o criminali per danneggiare un sistema informatico, rubare informazioni o causare problemi.

# --explanation--

`Man-in-the-Middle` (o `MITM`) è un tipo di attacco in cui un hacker si inserisce di nascosto tra due persone o sistemi che comunicano. L'hacker ascolta o modifica le informazioni scambiate senza che nessuno se ne accorga. Per esempio:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - L'hacker si è finto la banca, ha intercettato le informazioni e ha rubato le credenziali di accesso dell'utente. Questo ha permesso all'hacker di consultare il conto bancario senza che l'utente lo sapesse.

`Attacks` sono azioni compiute da hacker per danneggiare sistemi informatici, rubare informazioni o causare problemi. Per esempio:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - Indica che l'hacker ha inviato troppo traffico falso al sito web, facendolo crashare o rallentare. Questo ha impedito agli utenti reali di consultarlo, causando disservizi.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
