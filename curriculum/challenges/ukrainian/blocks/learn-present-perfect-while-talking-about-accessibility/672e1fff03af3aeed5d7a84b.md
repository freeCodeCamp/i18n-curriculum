---
id: 672e1fff03af3aeed5d7a84b
title: Завдання 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що думає Анна про ідеї Джеймса і що вона пропонує?

## --answers--

Вона не погоджується з ідеями Джеймса і пропонує почати новий підхід.

### --feedback--

Анна висловлює згоду з Джеймсом, а не незгоду, і хоче залишатися в курсі, а не починати заново.

---

Вона вважає ідеї Джеймса заплутаними і пропонує зосередитися лише на цілях доступності.

### --feedback--

Анна не вважає ідеї Джеймса заплутаними; вона погоджується і хоче контролювати прогрес у їхніх спільних цілях.

---

Вона погоджується з Джеймсом і пропонує залишатися на зв’язку, щоб контролювати прогрес.

---

Вона вважає ідеї Джеймса непотрібними і пропонує припинити проєкт.

### --feedback--

Анна не пропонує припиняти; вона підтримує ідеї Джеймса і хоче залишатися в курсі.

## --video-solution--

3

# --explanation--

Анна погоджується з підходом Джеймса, кажучи `That makes sense`, що показує, що вона розуміє і підтримує його ідеї. Вона також пропонує `keeping in touch to monitor progress`, що свідчить про її зацікавленість залишатися в курсі, щоб упевнитися, що вони досягають своїх спільних цілей.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
