---
id: 698a5b056fac9afc70ef3cad
title: Завдання 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

Давайте повторимо кілька країн, які ви вже вивчили.

| Країна | Національність (жіночий рід) | Національність (чоловічий рід) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

Імена країн іспанською — це власні назви, які завжди починаються з великої літери.

Зверніть увагу, що національності `brasileño`/`brasileña` та `panameño`/`panameña` використовують унікальну літеру `eñe` (`ñ`).

Каміла практикує кілька з цих країн. Чи можете ви їх впізнати?

# --instructions--

Прослухайте аудіо та доповніть послідовність нижче.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

Ця країна найбільша в Південній Америці і починається з великої літери.

---

`Panamá`

### --feedback--

Ця країна відома своїм знаменитим каналом. Не забудьте поставити акцент на останній літері `a` і написати першу літеру з великої.

# --explanation--

Послідовність: `Brasil` - `Colombia` - `Panamá`.

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
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
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
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
