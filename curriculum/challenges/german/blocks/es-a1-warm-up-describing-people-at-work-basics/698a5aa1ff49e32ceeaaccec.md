---
id: 698a5aa1ff49e32ceeaaccec
title: Aufgabe 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

Jetzt übt Camila, wie man `número de teléfono` auf Spanisch sagt, was „Telefonnummer“ bedeutet.

Beachten Sie, dass das Wort `número` einen Akzent auf dem Buchstaben `u` trägt und das Wort `teléfono` einen Akzent auf dem zweiten Buchstaben `e` hat.

# --instructions--

Hören Sie sich die Audiodatei an und schreiben Sie das Wort unten auf.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

Dieses Wort bedeutet wörtlich „Nummer“ auf Spanisch. Denken Sie daran, den Akzent auf dem Buchstaben `u` zu schreiben und den ersten Buchstaben großzuschreiben.

---

`teléfono`

### --feedback--

Dieses Wort bedeutet wörtlich „Telefon“ auf Spanisch. Denken Sie daran, den Akzent auf dem zweiten Buchstaben `e` zu schreiben.

# --explanation--

`Número de teléfono` bedeutet „Telefonnummer“ auf Spanisch.

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
