---
id: 6710e0e2cafeeb09e6cb2d8f
title: Aufgabe 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

Dies ist das Hilfsverb, das verwendet wird, um das `Past Continuous` in der Einzahl der ersten Person zu bilden.

---

`working`

### --feedback--

Dies ist das Hauptverb im `Past Continuous`, das die Tätigkeit des Arbeitens beschreibt.

---

`were`

### --feedback--

Dies ist das Hilfsverb, das verwendet wird, um das `Past Continuous` in der Mehrzahl der ersten Person zu bilden.

---

`updating`

### --feedback--

Dies ist das Hauptverb im `Past Continuous`, das eine andauernde Handlung des Verbesserns oder Modernisierens beschreibt.

# --explanation--

Die `Past Continuous`-Zeitform wird verwendet, um Handlungen zu beschreiben, die zu einem bestimmten Zeitpunkt in der Vergangenheit andauerten. Wenn zwei `Past Continuous`-Sätze zusammen verwendet werden, beschreiben sie oft gleichzeitige Handlungen oder Handlungen, die nebeneinander stattfinden.

In diesem Satz beschreibt Linda, wie sie und ihr Team sowohl arbeiteten als auch die Benutzeroberfläche kontinuierlich während des Projekts aktualisierten. Dies zeigt zwei Handlungen, die gleichzeitig in der Vergangenheit stattfanden und sich gegenseitig Kontext oder Hintergrund geben. Zum Beispiel:

`While I was preparing the report, they were testing the new features.` – Das bedeutet, dass die Handlung meines Berichtvorbereitens und das Testen der neuen Funktionen gleichzeitig stattfanden.

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
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
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
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
