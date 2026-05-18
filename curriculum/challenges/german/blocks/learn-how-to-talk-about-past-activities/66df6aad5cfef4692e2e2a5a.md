---
id: 66df6aad5cfef4692e2e2a5a
title: Aufgabe 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

Ein Wort, das zwei gleichzeitig ablaufende Handlungen oder eine Handlung, die von einer anderen abhängt, ausdrückt.

---

`more`

### --feedback--

Ein Wort, das eine größere Menge oder Anzahl angibt.

---

`users`

### --feedback--

Ein Wort, das sich auf die Personen bezieht, die die aktualisierte Benutzeroberfläche bedienen.

---

`navigate`

### --feedback--

Ein Wort, das bedeutet, sich durch etwas wie eine Website oder eine App zu bewegen.

# --explanation--

`As` kann verwendet werden, um „während“ oder „wenn“ auszudrücken und zeigt, dass eine Handlung stattfindet, während eine andere abläuft. Zum Beispiel:

- `As I was walking home, they called me.` – Sie haben Sie angerufen, während Sie nach Hause gegangen sind.

- `You will get better at coding as you practice more.` – Sie werden besser, während oder wenn Sie mehr üben.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
