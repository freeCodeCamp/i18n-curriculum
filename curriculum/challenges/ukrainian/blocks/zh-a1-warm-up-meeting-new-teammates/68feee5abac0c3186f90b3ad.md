---
id: 68feee5abac0c3186f90b3ad
title: Завдання 9
challengeType: 19
dashedName: task-9
lang: zh-CN
---

<!-- (Audio) Wang Hua: 名字 (míng zi) -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Який варіант є правильним піньїнь для того, що каже Wang Hua?

## --answers--

`míng zi`

---

`mǐng zi`

### --feedback--

Тон першого складу не відповідає тому, що ви чуєте в аудіо.

---

`mín zi`

### --feedback--

Фіналь першого складу не та, що вона вимовляє.

---

`míng zhī`

### --feedback--

Ініціаль другого складу відрізняється від того, що ви чуєте в аудіо.

## --video-solution--

1

# --explanation--

Wang Hua каже `míng zi`. Перший склад має носовий фіналь `ing` і піднесений тон. Другий склад — це ціле число зі нейтральним тоном, вимовляється легко.

# --scene--

```json
{
  "setup": {
    "background": "company1-breakroom.png",
    "characters": [
      {
        "character": "Wang Hua",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 31.51,
      "finishTimestamp": 32.34
    }
  },
  "commands": [
    {
      "character": "Wang Hua",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Wang Hua",
      "startTime": 1,
      "finishTime": 1.83,
      "dialogue": {
        "text": "名字 (míng zi)",
        "align": "center"
      }
    },
    {
      "character": "Wang Hua",
      "opacity": 0,
      "startTime": 2.33
    }
  ]
}
```
