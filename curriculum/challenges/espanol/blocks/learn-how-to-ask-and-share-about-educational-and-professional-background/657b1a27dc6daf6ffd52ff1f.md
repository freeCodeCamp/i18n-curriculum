---
id: 657b1a27dc6daf6ffd52ff1f
title: Tarea 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

En inglés, el sustantivo con sufijo `'s` seguido de una segunda estructura de sustantivo se usa para mostrar posesión o pertenencia.

Si el primer sustantivo es singular, como en `Sarah's laptop`, indica que el portátil pertenece a Sarah. Sin embargo, si el primer sustantivo es plural, la estructura cambia a sustantivo con sufijo `'`, como en `teachers' office`, indicando una oficina para maestros.

# --questions--

## --text--

¿A qué se refiere `master's degree` en el contexto del diálogo?

## --answers--

Un título para maestros escolares

### --feedback--

`Master's degree` se refiere a un título académico avanzado, no específicamente para maestros.

---

Un título educativo de nivel primario

### --feedback--

`Master's degree` es una calificación de educación superior, más allá del nivel primario.

---

Un título en habilidades de dominio

### --feedback--

Aunque implica pericia, `master's degree` se refiere específicamente a una calificación académica.

---

Un título académico avanzado

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
