---
id: 6579cf3ada08bdcfd5eae689
title: Tarea 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Sophie: Sure, Bob. I could use some help with a coding problem. -->

# --description--

En este diálogo, Sophie está haciendo una request a Bob. Entender la naturaleza de su request es esencial para una comunicación y colaboración efectivas en el equipo, especialmente en entornos técnicos donde resolver problemas juntos es común.

# --questions--

## --text--

¿Qué está pidiendo Sophie en su conversación con Bob?

## --answers--

Está pidiendo ayuda con un problema de codificación

---

Ella quiere que Bob resuelva el problema para ella

### --feedback--

Sophie está pidiendo ayuda, no necesariamente para que Bob lo resuelva completamente por su cuenta.

---

Ella está ofreciendo ayudar a Bob con un problema

### --feedback--

Sophie es la que está requestando asistencia, no ofreciéndola.

---

Ella está discutiendo un proyecto futuro

### --feedback--

La request de Sophie es sobre un problema de codificación actual que está enfrentando, no un proyecto futuro.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.9,
      "finishTimestamp": 7.58
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
      "finishTime": 3.68,
      "dialogue": {
        "text": "Sure, Bob. I could use some help with the coding problem.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.18
    }
  ]
}
```
