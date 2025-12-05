---
id: 655b67f02eecf57fa75ceecf
title: Tarea 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

To `stay` is used to indicate remaining in a particular state or condition. A menudo se usa en instrucciones o consejos para mantenerse en cierta situación. Por ejemplo:

- `Stay safe online.` - Continúa estando seguro mientras usas internet.

- `Stay calm during the test.` - Continúa estando tranquilo.

- `Stay focused on your work.` - Continúa prestando atención a tu trabajo.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

Este verbo indica que Sophie está proporcionando activamente ayuda o apoyo a su equipo. Termina en `-ing`.

---

`stay`

### --feedback--

Esta palabra se usa para sugerir mantener un cierto estado, en este caso, estar seguro mientras estás en línea.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
