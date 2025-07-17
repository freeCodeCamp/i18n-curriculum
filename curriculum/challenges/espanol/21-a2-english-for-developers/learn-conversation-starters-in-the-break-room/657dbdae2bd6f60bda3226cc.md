---
id: 657dbdae2bd6f60bda3226cc
title: Task 81
challengeType: 22
dashedName: task-81
---

<!-- (audio) Tom: Tell me about our team meetings, Sophie. Do they happen every week? -->
<!-- Sophie: Yes, they do. We have meetings on Monday mornings. -->


# --description--

Cuando quieres saber con qué frecuencia sucede algo, puedes usar `every` seguido de un período de tiempo como `day,` `week,` o `year.` En este diálogo, Tom está preguntando sobre la frecuencia de las reuniones del equipo.

# --instructions--

Presta atención al audio para completar la oración abajo.

# --fillInTheBlank--

## --sentence--

`Tell me about our team meetings, Sophie. Do they happen BLANK week?`

## --blanks--

`every`

### --feedback--

Tom está preguntando si las reuniones ocurren cada semana.


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
