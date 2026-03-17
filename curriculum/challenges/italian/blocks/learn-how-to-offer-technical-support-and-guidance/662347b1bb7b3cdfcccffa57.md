---
id: 662347b1bb7b3cdfcccffa57
title: Attività 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` è il passato del verbo `to hear`, che significa venire a sapere qualcosa tramite l’udito o essere informati di qualcosa. Per esempio, `I heard the news yesterday` significa che sei venuto a sapere la notizia il giorno prima.

Un `authentication module` in un contesto software è una parte di un sistema responsabile di verificare l’identità degli utenti. Viene spesso usato nei sistemi di accesso. Per esempio, `The authentication module checks the username and password` significa che verifica le credenziali dell’utente.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

È il passato di `to hear`, indicando che Brian è stato informato del compito di Sophie.

---

`fixing`

### --feedback--

Si riferisce all’atto di riparare o risolvere il problema (bug) nel software.

---

`authentication`

### --feedback--

Si riferisce al processo di verifica dell’identità di un utente nel modulo software.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
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
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
