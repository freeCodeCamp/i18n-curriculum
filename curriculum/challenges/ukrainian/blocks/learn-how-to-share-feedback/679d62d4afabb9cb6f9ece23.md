---
id: 679d62d4afabb9cb6f9ece23
title: Завдання 106
challengeType: 19
dashedName: task-106
lang: en-US
---

<!-- (Audio) Maria: If we rush, it could lead to more problems. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чого Марія хоче уникнути і чому?

## --answers--

Вона хоче уникнути виправлення проблеми.

### --feedback--

Марія не каже, що вони не повинні виправляти проблему.

---

Вона хоче уникнути прохання про допомогу.

### --feedback--

Марія не згадує про прохання допомоги.

---

Вона хоче уникнути поспіху, бо це може спричинити більше проблем.

---

Вона хоче уникнути оновлення програмного забезпечення.

### --feedback--

Марія не каже, що слід уникати оновлення.

## --video-solution--

3

# --explanation--

`To lead to problems` означає, що дія або рішення можуть призвести до складнощів або від’ємних наслідків. Наприклад:

`Skipping the testing phase can lead to serious problems in the software.` — це означає, що неправильне тестування може спричинити серйозні технічні проблеми.

У цьому діалозі Марія турбується, що поспіх може створити додаткові проблеми.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 47.08,
      "finishTimestamp": 49
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "If we rush, it could lead to more problems.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.42
    }
  ]
}
```
