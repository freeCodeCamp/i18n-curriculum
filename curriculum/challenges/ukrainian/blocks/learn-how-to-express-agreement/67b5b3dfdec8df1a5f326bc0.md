---
id: 67b5b3dfdec8df1a5f326bc0
title: Завдання 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

Це означає щось неяскраве або неочевидне. Це щось ніжне або м’яке, що ви можете не помітити одразу.

---

`palette`

### --feedback--

Це стосується діапазону кольорів, які використовуються у дизайні або творі мистецтва. У цьому випадку `color palette` означає вибір кольорів, обраних для дизайну застосунку або проєкту.

# --explanation--

`Subtle` означає щось делікатне або неочевидне. Наприклад:

`The artist used subtle shades of blue in the painting.` — це означає, що художник використав світлі або м’які відтінки синього, які не є дуже яскравими або помітними.

`Palette` стосується діапазону кольорів або матеріалів, які використовує художник чи дизайнер. Наприклад:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` — це означає, що дизайнер обрав множину теплих кольорів, таких як червоний, помаранчевий і жовтий, для дизайну вебсайту.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
