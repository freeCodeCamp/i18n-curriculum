---
id: 677d3b8fac17ba6cbf3d8afa
title: Tarea 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

Esta es la forma `-ing` del verbo `say`, usada después de la preposición `by` para indicar el método de inicio.

---

`QA`

### --feedback--

Esto representa `Quality Assurance`, refiriéndose al proceso de asegurar que los productos cumplan con los estándares requeridos.

# --explanation--

Cuando un verbo sigue a una preposición, debe tomar la forma `-ing` (gerundio). En esta oración, `saying` sigue a la preposición `by`, indicando el método que Bob usa para comenzar su declaración. Por ejemplo:

`She improved her skills by practicing regularly.` - Aquí, `practicing` sigue a la preposición `by`, mostrando cómo mejoró sus habilidades.

Bob felicita a Jessica por su trabajo en `QA`. `QA` significa `Quality Assurance`. Se refiere al proceso de asegurar que los productos o servicios cumplan con estándares específicos de calidad y funcionen correctamente. Otro ejemplo:

El equipo de QA identificó varios bugs durante las pruebas. Esto significa que las personas responsables de asegurar la calidad del software lograron detectar bugs en el software antes de su lanzamiento.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
