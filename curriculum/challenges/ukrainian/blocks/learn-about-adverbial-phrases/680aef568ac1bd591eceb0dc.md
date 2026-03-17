---
id: 680aef568ac1bd591eceb0dc
title: Завдання 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

Це скорочена форма для чогось, що означає повідомлення або вміст, створений для просування продукту, послуги чи події. Використовуйте множину.

# --explanation--

`ad` (скорочено від `advertisement`) — це частина вмісту, створена, щоб привернути увагу людей і спонукати їх щось купити, скористатися послугою або вжити заходів. Реклама може з’являтися в соціальних мережах, на вебсайтах, телебаченні, радіо тощо. Наприклад:

- `They launched a new ad campaign for their latest product.` – це означає, що компанія створила та поширила рекламний вміст, щоб підвищити інтерес до продукту.

- `We saw a lot of online ads for the holiday sale.` – це означає, що на вебсайтах або в застосунках було багато рекламних повідомлень про розпродаж.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
