---
id: 67acaebb95dabb0ee05500f7
title: Attività 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

Questa parola significa un ostacolo o qualcosa che rallenta il progresso.

# --explanation--

Un `setback` è qualcosa che ritarda o impedisce il progresso. Computer lenti o inefficienti possono far durare di più le attività, riducendo l'efficienza. Per esempio:

- `The project faced a setback due to a critical bug.` - Il progetto è stato ritardato o ha avuto problemi a causa di un serio problema software.

- `Losing important data was a major setback for the team.` - La perdita di dati ha creato difficoltà e ha rallentato il lavoro del team.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
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
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
