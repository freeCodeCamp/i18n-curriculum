---
id: 680aef568ac1bd591eceb0dc
title: Attività 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

Questa è una forma abbreviata di qualcosa che indica messaggi o contenuto creato per promuovere un prodotto, un servizio o un evento. Usa la forma plurale.

# --explanation--

Un `ad` (abbreviazione di `advertisement`) è un contenuto progettato per attirare l'attenzione delle persone e incoraggiarle a comprare qualcosa, usare un servizio o agire. Gli annunci possono apparire sui social media, siti web, TV, radio e altro. Per esempio:

- `They launched a new ad campaign for their latest product.` – Significa che l'azienda ha creato e condiviso contenuti promozionali per suscitare interesse verso un prodotto.

- `We saw a lot of online ads for the holiday sale.` – Significa che c'erano molti messaggi promozionali sulla vendita su siti web o app.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
