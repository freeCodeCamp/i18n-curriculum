---
id: 65ffa9d80e7ffb1ab9b4df1c
title: Attività 11
challengeType: 22
dashedName: task-11
lang: en-US
---

<!-- (Audio) Sarah: Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers. -->

# --description--

Ascolta l'audio e completa la frase.

# --fillInTheBlank--

## --sentence--

`BLANK you've BLANK the section you need, you should start by reading the BLANK paragraphs to get an overview of what the documentation BLANK.`

## --blanks--

`Once`

### --feedback--

Indica che l'azione successiva avviene non appena si trova la sezione. Metti in maiuscolo questa parola.

---

`found`

### --feedback--

Qui si usa per indicare il trovare o scoprire la sezione necessaria nella documentazione.

---

`introductory`

### --feedback--

Questa parola si riferisce ai paragrafi iniziali che forniscono una comprensione di base della sezione.

---

`covers`

### --feedback--

Significa ciò che la documentazione include o tratta in termini di contenuto.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.68,
      "finishTimestamp": 27.82
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
      "finishTime": 8.14,
      "dialogue": {
        "text": "Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8.64
    }
  ]
}
```
