---
id: 67e6a8ecaee3ff6cec47cc3e
title: Завдання 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чому Джессіка хоче швидко пояснити помилку команді?

## --answers--

Тому що вона хоче повернутися до основної теми зустрічі.

---

Тому що вона хоче раніше піти зі зустрічі.

### --feedback--

Джессіка не згадує про те, що хоче покинути зустріч.

---

Тому що команда вже знає про помилку.

### --feedback--

Джессіка пояснює помилку, бо вона може вплинути на команду.

---

Тому що вона не вважає помилку важливою.

### --feedback--

Джессіка вважає проблему важливою, але також хоче поважати порядок денний зустрічі.

## --video-solution--

1

# --explanation--

`So we can` використовується, щоб показати мету — це означає, що наступне, що ви згадуєте, є тим, що ви маєте намір зробити. Воно пояснює, чому хтось щось робить. Наприклад:

`I'll finish this now so we can start the next task.` – Це означає, що мовник хоче завершити одну справу, щоб незабаром почати іншу.

`The main agenda` стосується основних тем або плану зустрічі чи події. Наприклад:

`Let's stick to the main agenda and avoid side discussions.` – Це означає залишатися зосередженим на найважливіших пунктах зустрічі.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
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
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
