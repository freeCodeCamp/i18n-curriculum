---
id: 67b5b3dfdec8df1a5f326bc0
title: Aufgabe 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

Das bedeutet etwas, das nicht stark oder offensichtlich ist. Es ist etwas Sanftes oder Weiches, das Ihnen vielleicht nicht sofort auffällt.

---

`palette`

### --feedback--

Dies bezieht sich auf die Farbpalette, die in einem Design oder Kunstwerk verwendet wird. In diesem Fall bezeichnet `color palette` die Auswahl der Farben, die für das Design der App oder des Projekts gewählt wurden.

# --explanation--

`Subtle` bezeichnet etwas, das zart oder nicht offensichtlich ist. Zum Beispiel:

`The artist used subtle shades of blue in the painting.` – Das bedeutet, der Künstler hat helle oder sanfte Blautöne verwendet, die nicht sehr stark oder auffällig sind.

`Palette` bezieht sich auf die Farbpalette oder Materialien, die ein Künstler oder Designer verwendet. Zum Beispiel:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` – Das bedeutet, der Designer hat eine Auswahl warmer Farben wie Rot, Orange und Gelb für das Design der Website ausgewählt.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
