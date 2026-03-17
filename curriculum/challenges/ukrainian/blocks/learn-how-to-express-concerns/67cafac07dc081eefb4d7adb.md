---
id: 67cafac07dc081eefb4d7adb
title: Завдання 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яка мета проведення щотижневих зустрічей?

## --answers--

Щоб зменшити кількість завдань у команди.

### --feedback--

Боб не згадує про зменшення кількості завдань.

---

Щоб уникнути внесення будь-яких змін до проєкту.

### --feedback--

Боб не пропонує уникати внесення змін.

---

Щоб збільшити кількість зустрічей без чіткої мети.

### --feedback--

У Боба є конкретна мета, і він її озвучує.

---

Щоб усі залишалися в курсі оновлень проєкту.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` означає тримати їх у курсі важливих оновлень і рішень. Наприклад:

`Please keep me in the loop about any changes to the schedule.` — це означає, що мовник хоче отримувати оновлення, якщо щось зміниться.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
