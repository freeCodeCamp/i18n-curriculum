---
id: 657e1fd7b5ffaebc0ff4bd9f
title: Tarea 26
challengeType: 19
dashedName: task-26
lang: en-US
---

<!-- (audio) Tom: Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me. -->

# --description--

Escucha el audio y responde a la pregunta a continuación.

# --questions--

## --text--

¿Por qué está agradeciendo Tom a Sophie?

## --answers--

Por darle una app de gestión del tiempo.

### --feedback--

Tom is thanking Sophie for tips, not for giving him an app.

---

Porque encuentra útiles los consejos de Sophie.

---

Por invitarlo a almorzar.

### --feedback--

He is thanking her for the advice, not for a lunch invitation.

---

Por ayudarlo con un proyecto.

### --feedback--

La gratitud de Tom está relacionada con los consejos sobre organización, no con ayuda específica en un proyecto.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 58.29,
      "finishTimestamp": 63.00
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
      "finishTime": 5.71,
      "dialogue": {
        "text": "Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 6.21
    }
  ]
}
```
