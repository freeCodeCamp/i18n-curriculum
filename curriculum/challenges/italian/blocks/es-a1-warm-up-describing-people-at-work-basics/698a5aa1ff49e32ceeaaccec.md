---
id: 698a5aa1ff49e32ceeaaccec
title: Attività 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

Ora Camila sta esercitandosi a dire `número de teléfono` in spagnolo, che significa "numero di telefono".

Nota che la parola `número` ha un accento sulla lettera `u` e la parola `teléfono` ha un accento sulla seconda lettera `e`.

# --instructions--

Ascolta l'audio e scrivi la parola qui sotto.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

Questa parola significa letteralmente "numero" in spagnolo. Ricorda di scrivere l'accento sulla lettera `u` e di mettere la maiuscola alla prima lettera.

---

`teléfono`

### --feedback--

Questa parola significa letteralmente "telefono" in spagnolo. Ricorda di scrivere l'accento sulla seconda lettera `e`.

# --explanation--

`Número de teléfono` significa "numero di telefono" in spagnolo.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
