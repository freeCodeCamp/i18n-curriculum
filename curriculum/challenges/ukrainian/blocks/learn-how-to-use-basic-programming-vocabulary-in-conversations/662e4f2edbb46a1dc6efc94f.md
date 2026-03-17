---
id: 662e4f2edbb46a1dc6efc94f
title: Завдання 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` використовується для опису чогось, що трапляється часто або широко поширене серед багатьох людей. Наприклад, `Colds are a common illness during the winter.` Це означає, що це звичайна проблема зі здоров’ям, з якою стикаються багато людей у цей період року.

`Challenge` означає завдання або ситуацію, що вимагає особливих зусиль для виконання, бо є складною. Наприклад, `Learning to ride a bike was a big challenge for her at first.` Це речення описує, як навчання їзді на велосипеді спочатку було складним.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

Цей прикметник описує щось, що трапляється часто або є звичайним серед групи.

---

`challenge`

### --feedback--

Це іменник, що означає складне завдання або проблему, яка вимагає зусиль для розв’язання чи подолання.

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
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
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
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
