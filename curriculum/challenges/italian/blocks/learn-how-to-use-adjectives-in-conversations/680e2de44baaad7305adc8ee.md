---
id: 680e2de44baaad7305adc8ee
title: Attività 46
challengeType: 22
dashedName: task-46
lang: en-US
---

<!-- (Audio) Josh: I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`I'll draft a new quote with these specifics and send it over to you by tomorrow. BLANK for you?`

## --blanks--

`Does that work`

### --feedback--

Queste tre parole insieme si usano per chiedere cortesemente se un piano o una proposta vanno bene. La prima lettera della prima parola è maiuscola.

# --explanation--

`Does that work` è un modo cortese per verificare se una proposta o un accordo vanno bene per qualcuno. Per esempio:

`We can meet at 3 PM. Does that work for you?` – Questa frase chiede se l'orario è buono o comodo per l'altra persona.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Josh",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.14,
      "finishTimestamp": 75.94
    }
  },
  "commands": [
    {
      "character": "Josh",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Josh",
      "startTime": 1,
      "finishTime": 6.8,
      "dialogue": {
        "text": "I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you?",
        "align": "center"
      }
    },
    {
      "character": "Josh",
      "opacity": 0,
      "startTime": 7.3
    }
  ]
}
```
