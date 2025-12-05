---
id: 66bbba46fff0ef451b701bcd
title: Tarea 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Está Sarah disponible para hablar con Tom?

## --answers--

No, ella está ocupada y no quiere saber nada sobre sus problemas.

### --feedback--

Sarah dice que no está ocupada.

---

Sí, ella está disponible y quiere saber cuál es el problema.

---

No, ella no puede hablar ahora mismo, tiene sus propios problemas.

### --feedback--

Sarah menciona que no está ocupada.

---

Sí, pero solo por un momento porque ella tiene sus propios problemas.

### --feedback--

Sarah no limita el tiempo; simplemente dice que no está ocupada.

## --video-solution--

2

# --explanation--

En lugar de decir directamente que ella está libre, Sarah usa la forma negativa `I'm not busy` para enfatizar que tiene tiempo para ayudar.

Esta es una forma educada e indirecta de ofrecer disponibilidad en inglés, comúnmente usada para hacer la conversación más diplomática.

Su frase de seguimiento, `What's the problem?`, confirma que está dispuesta a ayudar invitando a Tom a explicar el problema.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
