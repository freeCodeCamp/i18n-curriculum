---
id: 67caeb9a6a3aedb94bc912dd
title: Tarea 129
challengeType: 22
dashedName: task-129
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Escucha el audio para completar la oración de abajo.  

# --fillInTheBlank--

## --sentence--

`They BLANK said the communication isn't great because they BLANK don't hear about changes until it's too late.`  

## --blanks--

`also`  

### --feedback--

Esto significa además o también.

---  

`often`  

### --feedback--

Esto significa frecuentemente o muchas veces.

# --explanation--

`Also` significa además de algo mencionado anteriormente. Por ejemplo:

`She speaks English and also knows French.` - Esto significa que ella sabe francés además de inglés.  

`Often` significa con frecuencia o regularmente. Por ejemplo:

`He often works late on Fridays.` - Esto significa que trabaja hasta tarde muchas veces o regularmente los viernes.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
