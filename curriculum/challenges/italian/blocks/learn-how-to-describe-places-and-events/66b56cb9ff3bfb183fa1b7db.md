---
id: 66b56cb9ff3bfb183fa1b7db
title: Attività 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

Ascolta l'audio per completare la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

Questa parola si usa per specificare il modulo di cui si sta parlando.

---

`new`

### --feedback--

Qualcosa di recente.

---

`module`

### --feedback--

Una parte o sezione specifica del programma di formazione.

# --explanation--

`Module` indica un'unità o una sezione di un corso o programma di formazione. Per esempio:

- `The new module on cybersecurity will be added next week.` - Qui, `module` indica una parte specifica della formazione focalizzata sulla cybersecurity.

Fai attenzione a come si usano le parole `this`, `new` e `module`. `This` serve a specificare il modulo di cui parlano, `new` mostra che è un'aggiunta recente e `module` indica una sezione della formazione.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
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
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
