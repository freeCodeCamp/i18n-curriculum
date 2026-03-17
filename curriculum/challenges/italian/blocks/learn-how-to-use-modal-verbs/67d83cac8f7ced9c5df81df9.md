---
id: 67d83cac8f7ced9c5df81df9
title: Attività 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

Questo verbo modale esprime possibilità o incertezza riguardo a un evento passato.

---

`have taken`

### --feedback--

Questo verbo è la forma `Past Perfect`, usata per parlare di qualcosa che potrebbe essere successo nel passato. Usa due parole.

# --explanation--  

`Might` esprime possibilità.  

`Have taken` è la forma `Past Perfect` di `take`, usata per parlare di un'azione passata possibile. Per esempio:

`The attacker might have taken sensitive files.` - Non sai con certezza, ma è possibile.

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
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
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
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
