---
id: 67ee6d7bcacdc02ff7d9beb2
title: Attività 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

Questa parola si usa per parlare dell'esistenza di qualcosa o per dire che qualcosa è presente o sta accadendo. È la contrazione di `there is`.

---

`problem`

### --feedback--

Questa parola indica un problema o una difficoltà che deve essere risolta o sistemata.

---

`with`

### --feedback--

Questa preposizione mostra la relazione o connessione tra due cose.

---

`event handling`

### --feedback--

Questa frase di due parole si riferisce al modo in cui software o siti web rispondono ad azioni, come clic o tratti da tastiera, eseguite dall'utente. La seconda parola termina con `-ing`.

# --explanation--

`There's a problem with` si usa per descrivere che qualcosa non funziona correttamente. Significa che c'è un problema o una difficoltà legata a una cosa specifica. Per esempio:

`There's a problem with the network.` – Questo significa che la rete non funziona correttamente.

`Event handling` si riferisce a come un programma o un sito web gestisce le azioni dell'utente come clic, pressioni da tastiera o movimenti del mouse. Per esempio:

`There's an issue with event handling.` - Questo significa che il software non risponde correttamente alle azioni dell'utente.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
