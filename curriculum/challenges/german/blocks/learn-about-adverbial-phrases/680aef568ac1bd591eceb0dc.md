---
id: 680aef568ac1bd591eceb0dc
title: Aufgabe 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

Dies ist eine Kurzform für etwas, das Nachrichten oder Inhalte bedeutet, die erstellt wurden, um ein Produkt, eine Dienstleistung oder ein Ereignis zu bewerben. Verwenden Sie die Pluralform.

# --explanation--

Ein `ad` (Kurzform für `advertisement`) ist ein Inhalt, der dazu dient, die Aufmerksamkeit der Menschen zu gewinnen und sie zu ermutigen, etwas zu kaufen, eine Dienstleistung zu nutzen oder aktiv zu werden. Anzeigen können in sozialen Medien, auf Websites, im Fernsehen, Radio und mehr erscheinen. Zum Beispiel:

- `They launched a new ad campaign for their latest product.` – Das bedeutet, dass das Unternehmen Werbeinhalte erstellt und geteilt hat, um Interesse an einem Produkt zu wecken.

- `We saw a lot of online ads for the holiday sale.` – Das bedeutet, dass es viele Werbebotschaften über den Verkauf auf Websites oder Apps gab.

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
