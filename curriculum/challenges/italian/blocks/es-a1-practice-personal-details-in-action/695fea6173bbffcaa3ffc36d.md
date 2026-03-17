---
id: 695fea6173bbffcaa3ffc36d
title: Attività 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

Ci sono due modi comuni per chiedere il nome di qualcuno in spagnolo.

Entrambi si usano nello spagnolo quotidiano e hanno lo stesso significato. Sono solo strutturati in modo diverso.

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Quale delle seguenti domande **è simile** a quella che senti nell'audio?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

Questa domanda chiede dove abita qualcuno.

---

`¿Cuál es tu apellido?`

### --feedback--

Questa chiede il cognome di qualcuno.

---

`¿Tienes apodo?`

### --feedback--

Questa chiede se qualcuno ha un soprannome.

## --video-solution--

1

# --explanation--

Esteban dice `¿Cómo te llamas?`. Questo è uno dei modi più comuni per chiedere il nome di qualcuno in spagnolo. Un'altra domanda molto comune con lo stesso significato è:

`¿Cuál es tu nombre?`

Entrambe le domande si usano nello spagnolo quotidiano per chiedere il nome di una persona. Sono semplicemente strutturate in modo diverso:

- `¿Cómo te llamas?` usa il verbo `llamarse` (chiamarsi).
- `¿Cuál es tu nombre?` chiede direttamente il nome come sostantivo.

In questa attività, la risposta corretta è l'opzione che chiede il nome di qualcuno.

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
