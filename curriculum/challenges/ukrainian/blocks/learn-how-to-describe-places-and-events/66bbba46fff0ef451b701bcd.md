---
id: 66bbba46fff0ef451b701bcd
title: Завдання 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чи може Сара поговорити з Томом?

## --answers--

Ні, вона зайнята і не хоче знати про його проблеми.

### --feedback--

Сара каже, що вона не зайнята.

---

Так, вона доступна і хоче дізнатися, у чому проблема.

---

Ні, вона не може зараз говорити, у неї свої проблеми.

### --feedback--

Сара згадує, що вона не зайнята.

---

Так, але лише на хвилинку, бо у неї свої проблеми.

### --feedback--

Сара не обмежує час; вона просто каже, що не зайнята.

## --video-solution--

2

# --explanation--

Замість того, щоб прямо сказати, що вона вільна, Сара використовує заперечну форму `I'm not busy`, щоб підкреслити, що має час допомогти.

Це ввічливий і непрямий спосіб запропонувати свою доступність англійською, який часто використовують, щоб зробити розмову більш тактовною.

Її наступне речення `What's the problem?` підтверджує, що вона готова допомогти, запрошуючи Тома пояснити проблему.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
