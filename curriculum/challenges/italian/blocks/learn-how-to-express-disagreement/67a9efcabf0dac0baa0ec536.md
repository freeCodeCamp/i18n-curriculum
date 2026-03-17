---
id: 67a9efcabf0dac0baa0ec536
title: Attività 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

Pensa a cosa serve alle persone per migliorare il proprio spazio di lavoro a casa. Questo include scrivanie, sedie e scaffali.

# --explanation--

`Office furniture` indica scrivanie, sedie, scaffali e altri elementi usati in uno spazio di lavoro.

In questo dialogo, Bob parla di come i dipendenti scelgano di spendere il loro contributo per il lavoro da remoto. Poiché lavorare da casa richiede un ambiente comodo e produttivo, molte persone usano il contributo per comprare mobili per ufficio come sedie ergonomiche o scrivanie ampie.

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
      "startTimestamp": 4.46,
      "finishTimestamp": 8
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
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
