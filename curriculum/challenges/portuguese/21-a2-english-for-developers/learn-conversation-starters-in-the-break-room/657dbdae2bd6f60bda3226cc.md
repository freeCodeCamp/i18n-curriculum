---
id: 657dbdae2bd6f60bda3226cc
title: Task 81
challengeType: 22
dashedName: task-81
---

<!-- (audio) Tom: Tell me about our team meetings, Sophie. Do they happen every week? -->
<!-- Sophie: Yes, they do. We have meetings on Monday mornings. -->


# --description--

Quando você quer saber com que frequência algo acontece, você pode usar `every` seguido por um período de tempo como `day,`, `week,` ou `year.` Neste diálogo, Tom está perguntando sobre a frequência das reuniões da equipe.

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Tell me about our team meetings, Sophie. Do they happen BLANK week?`

## --blanks--

`every`

### --feedback--

Tom está perguntando se as reuniões acontecem toda semana.


# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 3.70
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
      "finishTime": 4.70,
      "dialogue": {
        "text": "Tell me about our team meetings, Sophie. Do they happen every week?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.20
    }
  ]
}
```
