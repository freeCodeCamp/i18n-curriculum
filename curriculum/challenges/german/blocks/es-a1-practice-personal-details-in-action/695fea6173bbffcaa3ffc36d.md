---
id: 695fea6173bbffcaa3ffc36d
title: Aufgabe 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

Es gibt zwei gängige Möglichkeiten, auf Spanisch nach dem Namen einer Person zu fragen.

Beide werden im alltäglichen Spanisch verwendet und bedeuten dasselbe. Sie sind nur unterschiedlich aufgebaut.

# --instructions--

Hören Sie sich den Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Welche der folgenden Fragen **ist ähnlich** zu dem, was Sie im Audio hören?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

Diese Frage fragt, wo jemand wohnt.

---

`¿Cuál es tu apellido?`

### --feedback--

Diese Frage erkundigt sich nach dem Nachnamen einer Person.

---

`¿Tienes apodo?`

### --feedback--

Diese Frage fragt, ob jemand einen Spitznamen hat.

## --video-solution--

1

# --explanation--

Esteban sagt `¿Cómo te llamas?`. Dies ist eine der gebräuchlichsten Arten, auf Spanisch nach dem Namen einer Person zu fragen. Eine weitere sehr gebräuchliche Frage mit derselben Bedeutung ist:

`¿Cuál es tu nombre?`

Beide Fragen werden im alltäglichen Spanisch verwendet, um nach dem Namen einer Person zu fragen. Sie sind einfach unterschiedlich aufgebaut:

- `¿Cómo te llamas?` verwendet das Verb `llamarse` (sich nennen).
- `¿Cuál es tu nombre?` fragt direkt nach dem Namen als Substantiv.

In dieser Aufgabe ist die richtige Antwort die Option, die nach dem Namen einer Person fragt.

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
