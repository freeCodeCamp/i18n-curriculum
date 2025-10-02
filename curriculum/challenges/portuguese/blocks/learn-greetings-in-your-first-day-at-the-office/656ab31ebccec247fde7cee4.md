---
id: 656ab31ebccec247fde7cee4
title: Tarefa 64
challengeType: 22
dashedName: task-64
---

<!--
AUDIO REFERENCE:
Tom: Awesome. My computer and drawing tablet are great, too. 
-->

# --description--

`Awesome` é uma palavra que as pessoas usam quando realmente gostam de algo.É como dizer `Very good`.É uma forma informal de mostrar aprovação ou admiração.

# --fillInTheBlank--

## --sentence--

`BLANK. My computer and drawing tablet are great, too.`

## --blanks--

`Awesome`

### --feedback--

Esta palavra significa `very good` ou `I really like it`.A primeira letra é maiúscula.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 32.3,
      "finishTimestamp": 36
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.25,
      "dialogue": {
        "text": "Awesome. My computer and drawing tablet are great, too.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.75
    }
  ]
}
```
