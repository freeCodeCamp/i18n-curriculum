---
id: 69399bbb6d7a7bfeedaddd96
title: Aufgabe 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

Das Verb `escribir` bedeutet „schreiben“. Wenn spanische Sprecher erklären möchten, wie ein Wort geschrieben oder buchstabiert wird, verwenden sie oft den Ausdruck `se escribe`.

Diese Form stammt vom Verb `escribir` und wird häufig verwendet, bevor man Namen, E-Mails oder andere Wörter Buchstabe für Buchstabe buchstabiert. Zum Beispiel:

- `Carlos se escribe C-a-r-l-o-s.` – Carlos wird C-a-r-l-o-s buchstabiert.

- `Mi apellido se escribe con z.` – Mein Nachname wird mit z buchstabiert.

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

Dieses kleine Wort ist Teil eines gebräuchlichen Ausdrucks, der verwendet wird, wenn erklärt wird, wie etwas geschrieben wird.

---

`escribe`

### --feedback--

Diese Verbform stammt von `escribir` und wird beim Buchstabieren eines Wortes verwendet.

# --explanation--

`Se escribe` wird verwendet, wenn erklärt wird, wie ein Wort oder Name geschrieben wird.

Es stammt vom Verb `escribir` und wird häufig verwendet, bevor man etwas Buchstabe für Buchstabe buchstabiert.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
