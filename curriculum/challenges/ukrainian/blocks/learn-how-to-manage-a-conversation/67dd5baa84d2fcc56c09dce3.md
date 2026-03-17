---
id: 67dd5baa84d2fcc56c09dce3
title: Завдання 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

Це означає зробити вибір або дійти висновку щодо чогось.

---

`phase`

### --feedback--

Це стосується конкретного етапу або частини процесу чи проєкту.

# --explanation--

`To decide` означає вибрати щось після обдумування. Наприклад:

`We need to decide which tools to use for the project.` – Це означає вибрати інструменти після розгляду варіантів.

`phase` позначає одну частину або крок у більшому процесі. Наприклад:

`We just finished the testing phase of the software.` – Це означає, що крок тестування в процесі розробки завершено.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
