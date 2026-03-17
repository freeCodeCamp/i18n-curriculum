---
id: 68fa8b4ecf2cf649ff55f7fd
title: Завдання 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яка **друга** літера вимовляється в цьому аудіо?

## --answers--

`b`

### --feedback--

Літера `b` має інший звук.

---

`x`

---

`z`

### --feedback--

Літера `z` має інший звук.

---

`m`

### --feedback--

Літера `m` має інший звук.

## --video-solution--

2

# --explanation--

Це три літери, які вимовляються в аудіо: `b`, `x`, `z`.

Літера `x` — друга за порядком. Тому `x` — правильна відповідь.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
