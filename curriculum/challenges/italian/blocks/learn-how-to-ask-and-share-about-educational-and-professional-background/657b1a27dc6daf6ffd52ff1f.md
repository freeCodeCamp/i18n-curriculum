---
id: 657b1a27dc6daf6ffd52ff1f
title: Attività 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

In inglese, il sostantivo seguito da `'s` e da un secondo sostantivo viene usato per indicare possesso o appartenenza.

Se il primo sostantivo è singolare, come in `Sarah's laptop`, indica che il laptop appartiene a Sarah. Tuttavia, se il primo sostantivo è plurale, la struttura cambia in sostantivo seguito da `'`, come in `teachers' office`, indicando un ufficio per insegnanti.

# --questions--

## --text--

A cosa si riferisce `master's degree` nel contesto del dialogo?

## --answers--

Un titolo di studio per insegnanti scolastici

### --feedback--

`Master's degree` indica un titolo accademico avanzato, non specificamente per insegnanti.

---

Un titolo di studio di livello primario

### --feedback--

`Master's degree` è una qualifica di istruzione superiore, oltre il livello primario.

---

Un titolo per la padronanza di competenze

### --feedback--

Anche se implica competenza, `master's degree` si riferisce specificamente a una qualifica accademica.

---

Un titolo accademico avanzato

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
