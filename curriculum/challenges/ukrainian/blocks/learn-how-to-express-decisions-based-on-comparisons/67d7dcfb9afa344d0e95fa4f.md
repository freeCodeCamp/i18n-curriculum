---
id: 67d7dcfb9afa344d0e95fa4f
title: Завдання 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

Цей двослівний вираз означає спричинити або призвести до чогось.

---

`delay`

### --feedback--

Це означає зробити так, щоб щось тривало довше, ніж очікувалося.

# --explanation--

`Lead to` означає спричинити щось або призвести до певного результату. Наприклад:

`Poor planning can lead to missed deadlines.` – Це означає, що якщо планування буде зроблене погано, терміни можуть не бути дотримані.

`Delay` означає зробити так, щоб щось тривало довше, ніж очікувалося, або відкласти це. Наприклад:

`The software release was delayed due to unexpected bugs.` – Це означає, що запуск було відкладено через технічні проблеми.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
