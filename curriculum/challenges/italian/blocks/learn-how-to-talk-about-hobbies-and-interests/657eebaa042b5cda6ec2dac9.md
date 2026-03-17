---
id: 657eebaa042b5cda6ec2dac9
title: Attività 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?` si usa per esprimere incredulità, sorpresa o a volte per confermare se qualcuno sta scherzando.

Se un tuo amico ti dice di aver visto un cane che andava in skateboard per strada, potresti essere sorpreso e dire `Are you kidding?` per chiedere se è davvero serio o sta solo scherzando.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Questo verbo si usa nella frase per esprimere incredulità o sorpresa in risposta a un'affermazione. Finisce in `-ing`.

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
