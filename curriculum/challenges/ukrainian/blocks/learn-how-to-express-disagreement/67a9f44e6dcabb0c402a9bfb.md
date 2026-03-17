---
id: 67a9f44e6dcabb0c402a9bfb
title: Завдання 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що хоче дізнатися Боб?

## --answers--

Чи працівники вже купили офісні меблі.

### --feedback--

Боб не просить підтвердження покупок.

---

Скільки коштують офісні меблі.

### --feedback--

Боб не питає про ціну.

---

Чи компанія збільшить стипендію.

### --feedback--

Боб не обговорює зміни стипендії.

---

Чи вважає Анна, що використання стипендії на офісні меблі — це хороша ідея.

## --video-solution--

4

# --explanation--

Боб запитує, `Do you think that's a good idea?` Це спосіб дізнатися думку когось про пропозицію або план. Ось інші способи запитати думку:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

У цьому діалозі Боб має на увазі, що працівники використовують стипендію для віддаленої роботи на офісні меблі. Замість того, щоб висловити власну думку, він питає Анну, що вона думає.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
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
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
