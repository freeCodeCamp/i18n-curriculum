---
id: 65a74dae1b3acd9fad3a068e
title: Завдання 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` означає ідентифікувати когось або щось із минулого, або визнавати існування чи дійсність чогось. Наприклад, `I recognize your efforts in completing this project.`

`Recognition` — це іменник від `recognize` і означає акт визнання або надання заслуг комусь за їхні зусилля чи досягнення. Наприклад, `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

Цей дієслово означає виконувати діяльність або вправу повторно чи регулярно, щоб покращити або підтримувати свій рівень майстерності.

---

`recognition`

### --feedback--

Цей іменник означає дію або процес визнання зусиль, досягнень чи якостей когось.

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
      "filename": "4.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 41.5,
      "finishTimestamp": 47.12
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
      "finishTime": 6.62,
      "dialogue": {
        "text": "For me, I like the idea of practicing my skills and getting recognition for my contributions.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 7.12
    }
  ]
}
```
