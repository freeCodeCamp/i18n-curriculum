---
id: 67f0ee4cc8f7fe5fd534eff4
title: Завдання 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

Ця двослівна фраза використовується, щоб показати згоду або схвалення ідеї чи пропозиції. Перше слово закінчується на `-s`.

---

`appreciate`

### --feedback--

Це слово означає бути вдячним за щось. Воно виражає подяку за допомогу, підтримку або зроблене для вас.

# --explanation--

`Sounds good` означає, що мовник погоджується або схвалює сказане. Наприклад:

`Your idea sounds good.` – Це означає, що мовник вважає ідею доброю і погоджується з нею.

`I appreciate` — це спосіб сказати «дякую» або показати вдячність. Наприклад:

`I appreciate your help with the project.` – Це означає, що ви вдячні за отриману допомогу.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
