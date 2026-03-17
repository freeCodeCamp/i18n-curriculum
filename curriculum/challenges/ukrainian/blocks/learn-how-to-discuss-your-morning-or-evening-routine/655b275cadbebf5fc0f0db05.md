---
id: 655b275cadbebf5fc0f0db05
title: Завдання 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

To `take` може означати різні речі залежно від ситуації. У контексті навчання, to `take` означає відвідувати або брати участь у класі чи курсі. Наприклад:

- `I take online lessons at 7.` — тут `take` означає відвідувати уроки.

- `She is taking a programming course this semester.` — тут `taking` означає, що вона записана на курс і відвідує його.

Отже, коли ви кажете `take lessons` або `take a course`, ви говорите про приєднання або відвідування, а не про фізичне взяття чогось.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

Цей дієслово описує дію участі в уроках.

---

`online`

### --feedback--

Це слово стосується віртуального середовища.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
