---
id: 67a75a9acd71d2ed6eb9a6fa
title: Завдання 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

Ця двослівна фраза означає різні ситуації, які представляють, як людина може взаємодіяти з продуктом.

# --explanation--

`User scenarios` означає різні ситуації, які описують, як користувачі взаємодіють із продуктом, щоб досягти мети. Це допомагає командам тестувати та покращувати користувацький досвід. Наприклад:

`We created user scenarios to see how customers navigate the checkout process.` – Це означає, що команда змоделювала різні способи, якими користувачі здійснюють покупку, щоб виявити будь-які проблеми.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
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
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
