---
id: 67efebdf734ad521ace8a89e
title: Aufgabe 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

Dieser zweiteilige Ausdruck bezeichnet eine Sicherheitslücke in einem System, für die es keinen Fix oder kein Update gibt und die ausgenutzt werden kann.

# --explanation--

`Unpatched` bedeutet, dass etwas nicht aktualisiert oder behoben wurde.

`Vulnerability` bezeichnet eine Schwachstelle in einem System, die ausgenutzt werden kann.

Zusammen ist ein `unpatched vulnerability` eine Sicherheitslücke, die nicht behoben oder aktualisiert wurde. Hacker können diese Schwachstellen ausnutzen, um ein System anzugreifen. Zum Beispiel:

`We need to fix the unpatched vulnerability now.` – Das Team kennt ein Sicherheitsproblem, aber es wurde noch nicht behoben.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
