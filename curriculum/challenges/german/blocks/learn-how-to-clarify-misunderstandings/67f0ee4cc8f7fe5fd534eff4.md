---
id: 67f0ee4cc8f7fe5fd534eff4
title: Aufgabe 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

Diese Phrase aus zwei Wörtern wird verwendet, um Zustimmung oder Zustimmung zu einer Idee oder einem Vorschlag auszudrücken. Das erste Wort endet mit `-s`.

---

`appreciate`

### --feedback--

Dieses Wort bedeutet, für etwas dankbar zu sein. Es drückt Dankbarkeit für Hilfe, Unterstützung oder eine für Sie erledigte Sache aus.

# --explanation--

`Sounds good` bedeutet, dass der Sprecher dem Gesagten zustimmt oder es gutheißt. Zum Beispiel:

`Your idea sounds good.` – Das bedeutet, der Sprecher findet die Idee gut und stimmt ihr zu.

`I appreciate` ist eine Möglichkeit, Danke zu sagen oder Dankbarkeit zu zeigen. Zum Beispiel:

`I appreciate your help with the project.` – Das bedeutet, dass Sie für die erhaltene Hilfe dankbar sind.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
