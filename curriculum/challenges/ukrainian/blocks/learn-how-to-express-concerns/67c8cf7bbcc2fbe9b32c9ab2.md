---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: Завдання 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що Марія зробить із коментарями, які отримала від Джеймса?

## --answers--

Вона їх проігнорує.

### --feedback--

Марія визнає думку Джеймса і планує вжити заходів.

---

Вона скаже команді припинити хвилюватися про комунікацію.

### --feedback--

Марія хоче покращити комунікацію, а не відкидати занепокоєння.

---

Вона скасує зустрічі команди.

### --feedback--

Марія не каже, що скасує зустрічі.

---

Вона запропонує проводити більше зустрічей, щоб покращити комунікацію.

## --video-solution--

4  

# --explanation--

Коли використовуєте дієслово `suggest`, наступне дієслово слід ставити у формі `-ing` замість інфінітива. Наприклад:

- `She suggested taking a break.` — це означає, що запропонована ідея полягає у взятті перерви.

- `He suggested starting the meeting earlier to avoid delays.` — це означає, що він запропонував почати зустріч раніше.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
