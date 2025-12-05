---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: Tarea 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.  

# --questions--

## --text--

¿Qué hará Maria con los comentarios que recibió de James?  

## --answers--

Ella los ignorará.  

### --feedback--

Maria reconoce el punto de James y planea tomar acción.

---

Ella le dirá al equipo que deje de preocuparse por la comunicación.

### --feedback--

Maria quiere mejorar la comunicación, no descartar las preocupaciones. 

---

Ella cancelará los check-ins del equipo.

### --feedback--

Maria no dice que cancelará los check-ins.

---

Ella propondrá tener más check-ins para mejorar la comunicación.

## --video-solution--

4  

# --explanation--

Al usar el verbo `suggest`, usa el siguiente verbo en la forma `-ing` en lugar del infinitivo. Por ejemplo:

- `She suggested taking a break.` - Esto significa que la idea propuesta es tomar un descanso.

- `He suggested starting the meeting earlier to avoid delays.` - Esto significa que él propuso comenzar la reunión antes.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
