---
id: 675ecedbb04f6ca6dd620f0e
title: Завдання 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

Це тип кібернападу, коли хакер таємно стає посередником між двома людьми або системами, які спілкуються. Хакер може бачити, змінювати або викрадати інформацію, що передається, і ніхто про це не знає. Це складне слово, пам’ятайте, що потрібно використовувати `-`. Перші літери першого та четвертого слова мають бути з великої.

---

`attacks`

### --feedback--

Це слово у множині означає дії хакерів або злочинців, спрямовані на шкоду комп’ютерній системі, викрадення інформації або створення проблем.

# --explanation--

`Man-in-the-Middle` (або `MITM`) — це тип нападу, коли хакер таємно стає посередником між двома людьми або системами, які спілкуються. Хакер прослуховує або змінює інформацію, що передається, і ніхто про це не знає. Наприклад:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` — хакер прикидався банком, перехопив інформацію та викрав облікові дані користувача. Це дозволило хакеру отримати доступ до банківського рахунку без відома користувача.

`Attacks` — це дії хакерів, спрямовані на шкоду комп’ютерним системам, викрадення інформації або створення проблем. Наприклад:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` — це означає, що хакер надіслав занадто багато фальшивого трафіку на вебсайт, через що він впав або почав працювати повільно. Це завадило реальним користувачам отримати доступ, спричинивши перебої.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
