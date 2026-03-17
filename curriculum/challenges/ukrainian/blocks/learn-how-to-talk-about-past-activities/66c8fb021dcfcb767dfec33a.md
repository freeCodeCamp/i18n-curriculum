---
id: 66c8fb021dcfcb767dfec33a
title: Завдання 16
challengeType: 19
dashedName: task-16
lang: en-US
---
<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яка з наведених інструкцій є правильною?

## --answers--

Вони ніколи раніше не вирішували подібних проблем.

### --feedback--

Подумайте, чи згадує Лінда про досвід із подібними проблемами.

---

Вони вже вирішували цю конкретну проблему в іншому проєкті.

### --feedback--

Розгляньте, чи каже Лінда, що мають досвід із цією конкретною проблемою або з чимось подібним.

---

Вони не вирішували цю конкретну проблему, але раніше вирішували подібні.

---

Вони багато разів раніше вирішували цю проблему.

### --feedback--

Подумайте, чи говорить Лінда про вирішення саме цієї конкретної проблеми чи про щось подібне.
  
## --video-solution--

3

# --explanation--

Щоб знайти правильну відповідь, зосередьтеся на тому, чи говорить Лінда про вирішення `exact issue` або `similar issues`.

Лінда чітко каже, що вони не вирішували цю конкретну проблему раніше, але також згадує, що вирішували подібні проблеми в минулому.

Правильна відповідь має відобразити цей баланс — визнати відсутність точного збігу, але підтвердити досвід із суміжними проблемами.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
