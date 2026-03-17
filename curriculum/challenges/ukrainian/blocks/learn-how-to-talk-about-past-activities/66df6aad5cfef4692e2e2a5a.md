---
id: 66df6aad5cfef4692e2e2a5a
title: Завдання 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

Слово, яке показує дві дії, що відбуваються одночасно, або одну дію, що залежить від іншої.

---

`more`

### --feedback--

Слово, яке вказує на більшу кількість або число.

---

`users`

### --feedback--

Слово, яке стосується людей, що переміщуються оновленим інтерфейсом.

---

`navigate`

### --feedback--

Слово, яке означає рухатися навколо або через щось, наприклад, вебсайт або застосунок.

# --explanation--

`As` можна використовувати в значенні "поки" або "коли", показуючи, що одна дія відбуватиметься, поки триває інша. Наприклад:

- `As I was walking home, they called me.` - Вони подзвонили вам, поки ви йшли додому.

- `You will get better at coding as you practice more.` - Ви покращитесь, поки або коли більше практикуватиметесь.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
