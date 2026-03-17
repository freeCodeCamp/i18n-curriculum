---
id: 677d3b8fac17ba6cbf3d8afa
title: Завдання 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

Це `-ing` форма дієслова `say`, яка використовується після прийменника `by` для позначення способу початку.

---

`QA`

### --feedback--

Це означає `Quality Assurance`, що стосується процесу забезпечення відповідності продуктів необхідним стандартам.

# --explanation--

Коли дієслово йде після прийменника, воно має бути у `-ing` формі (герундій). У цьому реченні `saying` йде після прийменника `by`, що вказує на спосіб, яким Боб починає свою заяву. Наприклад:

`She improved her skills by practicing regularly.` — тут `practicing` йде після прийменника `by`, показуючи, як вона покращила свої навички.

Боб хвалить Джесіку за її роботу у `QA`. `QA` означає `Quality Assurance`. Це стосується процесу забезпечення того, щоб продукти чи послуги відповідали певним стандартам якості та правильно функціонували. Ще один приклад:

`The QA team identified several bugs during testing.` — це означає, що відповідальні за забезпечення якості програмного забезпечення змогли виявити помилки у програмі до її випуску.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
