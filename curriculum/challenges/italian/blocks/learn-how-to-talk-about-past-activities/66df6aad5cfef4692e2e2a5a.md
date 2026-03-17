---
id: 66df6aad5cfef4692e2e2a5a
title: Attività 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

Una parola che indica due azioni che avvengono contemporaneamente o un'azione che dipende da un'altra.

---

`more`

### --feedback--

Una parola che indica una quantità o un numero maggiore.

---

`users`

### --feedback--

Una parola che si riferisce alle persone che navigano l'interfaccia aggiornata.

---

`navigate`

### --feedback--

Una parola che significa muoversi dentro o attraverso qualcosa, come un sito web o un'app.

# --explanation--

`As` può essere usato per significare "mentre" o "quando", mostrando che un'azione avverrà mentre un'altra è in corso. Per esempio:

- `As I was walking home, they called me.` - Ti hanno chiamato mentre tornavi a casa a piedi.

- `You will get better at coding as you practice more.` - Migliorerai mentre o quando ti eserciterai di più.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
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
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
