---
id: 68249d79d4ddca45eff7fafd
title: Завдання 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що Джессіка планує зробити з цією інформацією?

## --answers--

Ігнорувати її зараз і чекати на додатковий відгук.

### --feedback--

Джессіка каже, що організує інформацію та поділиться нею, а не ігноруватиме.

---

Організувати її у звіт і обговорити з іншими.

---

Попросити користувачів протестувати знову перед внесенням змін.

### --feedback--

Вона нічого не згадує про повторне тестування чи відгуки користувачів.

---

Надіслати її безпосередньо клієнту без повторного перегляду.

### --feedback--

Джессіка планує спочатку поговорити зі своєю командою, а не надсилати одразу клієнту.

## --video-solution--

2

# --explanation--

Джессіка каже, що вона `put all this information into a report` і `talk about it with the team tomorrow`. Це показує, що вона планує організувати деталі та обговорити їх зі своєю командою.

Вона також каже, що відгук `should help`, що означає, що він допоможе визначити їхні наступні кроки.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
