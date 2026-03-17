---
id: 679d26afcebc4ea8a9478fbf
title: Завдання 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чи впевнений Джеймс, що їм потрібно оновити програмне забезпечення?

## --answers--

Не зовсім, бо він питає думку Марії.

---

Так, він уже вирішив його оновити.

### --feedback--

Джеймс запитує Марію про це, тож, ймовірно, він ще не прийняв рішення.

---

Так, він уже почав оновлювати програмне забезпечення.

### --feedback--

Джеймс питає, чи варто оновлювати програмне забезпечення, чи ні.

---

Навпаки, він впевнений, що оновлювати не потрібно.

### --feedback--

Джеймс не відкидає ідею повністю; він насправді питає думку Марії з цього приводу.

## --video-solution--

1

# --explanation--

`To update` означає змінити або покращити програмне забезпечення, випустивши нову версію. Оновлення можуть включати виправлення помилок, нові функції або покращення продуктивності. Наприклад:

`The company released an update to fix security vulnerabilities in the app.` — це означає, що була випущена нова версія для усунення проблем із безпекою.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
