---
id: 680ae6fa6f3bb82a094cffcf
title: Завдання 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що могла б сказати Марія, щоб показати, що вона приємно здивована результатами?

## --answers--

`That's impressive.`

### --audio-id--

EN70c3200b

---

`Maybe we should lower our expectations.`

### --audio-id--

EN342dc19a

### --feedback--

Це демонструє відсутність впевненості, а не захоплення результатами.

## --video-solution--

1

# --explanation--

`Impressive` означає, що щось варте уваги, захоплення або поваги, бо воно надзвичайно добре, велике або ефективне. Наприклад:

`Your presentation was really impressive! It covered everything clearly and confidently.` – Це означає, що презентація була високоякісною і справила сильне позитивне враження.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
