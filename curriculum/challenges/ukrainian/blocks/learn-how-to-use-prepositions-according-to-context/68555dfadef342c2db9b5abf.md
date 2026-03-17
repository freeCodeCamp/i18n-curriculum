---
id: 68555dfadef342c2db9b5abf
title: Завдання 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

Ця двослівна фраза означає, що щось було введено або спричинило появу проблеми. Перше слово — це форма минулого часу `bring`.

---

`unexpected`

### --feedback--

Це слово означає, що щось сталося несподівано або не було заплановане. Воно закінчується на `-ed`.

# --explanation--

`Brought up` означає спричинити появу чогось, особливо проблеми чи питання. Тут `brought` — це форма минулого часу від `bring`. Наприклад:

`The new feature brought up several bugs.` – Це означає, що функція спричинила появу помилок.

`Unexpected` описує те, що трапляється без попередження чи планування. Наприклад:

`We had an unexpected delay due to server issues.` – Це означає, що затримка була непередбаченою.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
