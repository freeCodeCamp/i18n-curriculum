---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: Завдання 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що ще мав зробити Марк?

## --answers--

Він мав переписати весь свій код.

### --feedback--

Марк не мав потреби переписувати все.

---

Він мав спочатку протестувати свій код.

---

Він мав видалити всі коментарі.

### --feedback--

Коментарі корисні і їх не слід видаляти.

---

Він мав пропустити тестування, бо це займає забагато часу.

### --feedback--

Тестування — важливий крок перед відправленням коду.

## --video-solution--

2

# --explanation--

`test suite` — це набір тестів, які перевіряють, чи працює програма правильно. Наприклад:

- `We ran the test suite to check if the app works properly.` — команда виконала всі тести, щоб переконатися, що застосунок працює як очікується.

- `We need to add more tests to the test suite to check for edge cases.` — команді слід додати більше тестів, щоб охопити всі можливі ситуації.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
