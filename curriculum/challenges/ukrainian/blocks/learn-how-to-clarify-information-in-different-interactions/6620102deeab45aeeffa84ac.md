---
id: 6620102deeab45aeeffa84ac
title: Завдання 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

Коли описуєте колір очей людини, зазвичай спочатку визначаєте їх за кольором. Загальні кольори очей — це `black`, `brown`, `blue` та `green`. Залежно від кольору, він може мати тенденцію до `white` або до `black` (сам колір може бути більш насиченим або слабшим). У цьому випадку ви можете додати слова `light` (тенденція до `white`) і `dark` (тенденція до `black`) перед кольором, щоб це виразити. Ще одна характеристика, яку зазвичай використовують для опису очей іншої людини — це форма: `round`, коли вона більше схожа на коло, і `narrow`, коли вона більше нагадує лінію. Нарешті, можна описати їх за розміром: `large` (коли вони великі) або `small` (коли ні). Том також висловлює думку, кажучи, що очі Ліси сповнені енергії та життєвості. У такому випадку кажуть, що чиїсь очі `bright`.

Як і з `hair`, прикметники для опису очей людини в англійській мові також мають порядок. Спочатку ви висловлюєте думку, потім переходите до розміру, далі — до форми і нарешті — до кольору (перед яким може стояти `light` або `dark`).

Приклад: `Tom has beautiful, small, narrow, light green eyes.`

Тепер послухайте і заповніть пропуски описом очей Ліси від Тома.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Том спочатку висловлює думку. Він каже, що очі Ліси сповнені енергії.

---

`brown`

### --feedback--

Том нарешті говорить про колір очей Ліси. Це відтінок, близький до `black`, і не `blue`, і не `green`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
