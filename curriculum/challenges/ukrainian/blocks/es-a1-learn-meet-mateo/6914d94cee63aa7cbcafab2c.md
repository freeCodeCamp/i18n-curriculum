---
id: 6914d94cee63aa7cbcafab2c
title: Завдання 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Матео називає своє ім’я та професію іспанською.

Тут дієслово `ser` використовується, щоб висловити його особу та професію.

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

Ця форма дієслова походить від дієслова `ser` і використовується, щоб описати, хто ви є або чим ви займаєтеся.

---

`Soy`

### --feedback--

Ця форма дієслова походить від дієслова `ser` і використовується, щоб описати, хто ви є або чим ви займаєтеся.

# --explanation--


`Soy` — це дієслово, яке використовується, щоб описати, хто ви є або чим ви займаєтеся. Наприклад:

`Soy Mateo. Soy ingeniero de software.` — Я Матео. Я інженер програмного забезпечення.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 2.35,
      "finishTimestamp": 5.39
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 1.82,
      "dialogue": {
        "text": "Soy Mateo.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "startTime": 2.5,
      "finishTime": 4.04,
      "dialogue": {
        "text": "Soy ingeniero de software.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 4.54
    }
  ]
}
```
