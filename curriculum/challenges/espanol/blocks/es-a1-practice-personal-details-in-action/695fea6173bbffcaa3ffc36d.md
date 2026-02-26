---
id: 695fea6173bbffcaa3ffc36d
title: Tarea 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

Hay dos formas comunes de preguntar el nombre de alguien en español.

Ambos se usan en el español cotidiano y significan lo mismo. Solo están estructurados de manera diferente.

# --instructions--

Escucha el audio y responde a la pregunta de abajo. 

# --questions--

## --text--

¿Cuál de las siguientes preguntas **es similar** a lo que escuchas en el audio?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

Esta pregunta pregunta dónde vive alguien.

---

`¿Cuál es tu apellido?`

### --feedback--

Esto pide el apellido de alguien.

---

`¿Tienes apodo?`

### --feedback--

Esto pregunta si alguien tiene un apodo.

## --video-solution--

1

# --explanation--

El audio dice `¿Cómo te llamas?`. Esta es una de las formas más comunes de preguntar el nombre de alguien en español. Otra pregunta muy común con el mismo significado es:

`¿Cuál es tu nombre?`

Ambas preguntas se usan en el español cotidiano para preguntar el nombre de una persona. Simplemente están estructuradas de manera diferente:

- `¿Cómo te llamas?` usa el verbo `llamarse` (to be called)
- `¿Cuál es tu nombre?` pregunta directamente por el nombre como sustantivo

En esta tarea, la respuesta correcta es la opción que pregunta por el nombre de alguien.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
