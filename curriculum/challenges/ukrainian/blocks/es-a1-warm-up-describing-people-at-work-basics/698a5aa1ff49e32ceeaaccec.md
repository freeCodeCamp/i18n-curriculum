---
id: 698a5aa1ff49e32ceeaaccec
title: Завдання 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

Зараз Каміла тренується, як сказати `número de teléfono` іспанською, що означає «номер телефону».

Зверніть увагу, що слово `número` має акцент на літері `u`, а слово `teléfono` має акцент на другій літері `e`.

# --instructions--

Прослухайте аудіо і напишіть слово нижче.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

Це слово буквально означає «число» іспанською. Не забудьте написати акцент на літері `u` і велику першу літеру.

---

`teléfono`

### --feedback--

Це слово буквально означає «телефон» іспанською. Не забудьте написати акцент на другій літері `e`.

# --explanation--

`Número de teléfono` означає «номер телефону» іспанською.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
