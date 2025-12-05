---
id: 67a9f44e6dcabb0c402a9bfb
title: Tarea 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué quiere saber Bob?

## --answers--

Si los empleados ya han comprado muebles de oficina.

### --feedback--

Bob no está pidiendo confirmación de compras.

---

Cuánto cuesta el mobiliario de oficina.

### --feedback--

Bob no pregunta por el precio.

---

Si la empresa aumentará el estipendio.

### --feedback--

Bob no está discutiendo cambios en la asignación.

---

Si Anna piensa que usar el estipendio para muebles de oficina es una buena idea.

## --video-solution--

4

# --explanation--

Bob pregunta, `Do you think that's a good idea?` Esta es una forma de pedir la opinión de alguien sobre una sugerencia o plan. Aquí hay otras formas de pedir una opinión:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

En este diálogo, Bob se refiere a los empleados que usan el estipendio de trabajo remoto para muebles de oficina. En lugar de expresar su propia opinión, le pregunta a Anna qué piensa ella.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
