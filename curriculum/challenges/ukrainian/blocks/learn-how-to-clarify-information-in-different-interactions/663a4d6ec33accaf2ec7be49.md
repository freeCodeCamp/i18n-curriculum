---
id: 663a4d6ec33accaf2ec7be49
title: Завдання 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile` — це те, що відбувається, коли ви піднімаєте куточки рота, щоб показати радість. Це те, що ви робите обличчям, коли ви щасливі або хочете бути приємними.

`Friendly` описує людину, яка є доброю, приємною і з якою легко спілкуватися. Дружня людина змушує інших почуватися комфортно і щасливо.

`A friendly smile` — це усмішка, яка показує, що ви доброзичливі та гостинні. Вона змушує інших почуватися добре і показує, що ви хочете бути друзями.

Прослухайте діалог і заповніть пропуски.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

Цей пропуск описує людину, яка є приємною, з якою легко спілкуватися і яка гостинна.

---

`smile`

### --feedback--

Дія, яку ви робите, коли хочете показати радість ротом.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
