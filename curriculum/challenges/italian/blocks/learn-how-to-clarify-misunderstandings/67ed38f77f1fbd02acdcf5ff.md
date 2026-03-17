---
id: 67ed38f77f1fbd02acdcf5ff
title: Attività 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

Questa frase di due parole si usa per chiedere cosa sta succedendo o qual è la situazione. La prima parola termina con `-ing`.

# --explanation--

`What's going on?` è un modo comune per chiedere a qualcuno cosa sta succedendo, qual è la situazione o quale problema o evento sta avvenendo. Per esempio:

`What's going on at the meeting?` – Qualcuno sta chiedendo cosa sta succedendo durante la riunione.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 7.62,
      "finishTimestamp": 9.1
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 2.48,
      "dialogue": {
        "text": "Sure, Mark. What's going on?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 2.98
    }
  ]
}
```
