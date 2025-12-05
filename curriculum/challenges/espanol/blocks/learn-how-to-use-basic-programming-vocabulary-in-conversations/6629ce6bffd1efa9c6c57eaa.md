---
id: 6629ce6bffd1efa9c6c57eaa
title: Tarea 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

La frase `how's it going?` es una manera común de preguntar a alguien cómo está o qué está sucediendo en su vida. A menudo se usa como un saludo amistoso.

Por ejemplo, cuando ves a un viejo amigo, puedes decir <code>Hey, how's it going? ¡No te he visto desde hace tiempo!</code> Esta es una manera informal de preguntarles sobre su vida. Si quieres preguntarles sobre algo específico, como su nuevo trabajo, puedes decir `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

Esta contracción se usa comúnmente en saludos informales. Capitaliza la primer palabra.

---

`going`

### --feedback--

Esta palabra completa el saludo informal común que pregunta sobre el estado general de alguien.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
