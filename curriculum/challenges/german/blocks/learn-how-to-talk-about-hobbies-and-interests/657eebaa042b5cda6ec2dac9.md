---
id: 657eebaa042b5cda6ec2dac9
title: Aufgabe 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?` wird verwendet, um Unglauben, Überraschung oder manchmal um zu bestätigen, ob jemand scherzt, auszudrücken.

Wenn Ihr Freund Ihnen erzählt, dass er einen Hund gesehen hat, der mit einem Skateboard die Straße hinunterfährt, könnten Sie überrascht sein und `Are you kidding?` sagen, um zu fragen, ob er es wirklich ernst meint oder nur scherzt.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Dieses Verb wird in der Phrase verwendet, um Unglauben oder Überraschung als Antwort auf eine Aussage auszudrücken. Es endet auf `-ing`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
