---
id: 657cbef9aa43ceba8af6feb4
title: Task 51
challengeType: 22
dashedName: task-51
---

<!-- (audio) Sophie: "I think she has a passion for technology and enjoys leading our team." -->

# --description--

Cuando te gusta hacer algo mucho, puedes decir que lo `enjoy`. Es una forma sencilla de expresar que algo te hace feliz.

Por ejemplo, puedes decir, `I enjoy playing video games` si jugar videojuegos es divertido para ti. En el diálogo, Sophie nos dice algo que Maria disfruta en su trabajo.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

¿Qué palabra usarías para decir que Maria encuentra felicidad guiando al equipo? Es la misma palabra utilizada cuando te diviertes o te gusta hacer una actividad.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
