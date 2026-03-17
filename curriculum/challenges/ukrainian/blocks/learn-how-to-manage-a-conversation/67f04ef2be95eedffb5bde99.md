---
id: 67f04ef2be95eedffb5bde99
title: Завдання 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

Після `down` це означає змусити щось рухатися або відбуватися повільніше, ніж зазвичай. Використайте форму `-ing`.

# --explanation--

`To slow down` означає зменшити швидкість або зробити так, щоб щось відбувалося повільніше. У робочому чи проєктному контексті це може означати будь-що, що затримує прогрес. Наприклад:

`Traffic is slowing down the delivery.` – Це означає, що доставка займає більше часу через затори.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 23.16,
      "finishTimestamp": 25.38
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.22,
      "dialogue": {
        "text": "Is there anything else slowing you down?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.72
    }
  ]
}
```
