---
id: 680cad23e2d58a1ef7c2edfb
title: Завдання 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

Це слово використовується, щоб вказати на конкретні елементи, які знаходяться близько до мовця.

---

`high-capacity`

### --feedback--

Це складне слово означає щось, що може впоратися з великою кількістю роботи, зберігання або енергії. Не забудьте використати `-`.

# --explanation--

`High-capacity` описує щось, створене для того, щоб управляти або зберігати велику кількість у порівнянні зі стандартними версіями. Наприклад:

`We installed high-capacity batteries in the new devices.` – Це означає, що батареї можуть зберігати більше енергії і працювати довше, що корисно в технічному обладнанні.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
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
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
