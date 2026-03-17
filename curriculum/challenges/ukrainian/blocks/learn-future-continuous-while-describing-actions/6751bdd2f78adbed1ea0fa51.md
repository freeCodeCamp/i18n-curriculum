---
id: 6751bdd2f78adbed1ea0fa51
title: Завдання 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яка турбота Браяна?

## --answers--

Якщо потрібно повідомити користувачів про простій.

---

Якщо простій триватиме занадто довго.

### --feedback--

Браян не запитує про довжину простою.

---

Якщо користувачі зіткнуться з технічними проблемами.

### --feedback--

Браян не згадує про технічні проблеми у своїй турботі.

---

Якщо простій вплине на продуктивність сервера.

### --feedback--

Турбота Браяна не стосується продуктивності сервера.

## --video-solution--

1

# --explanation--

Браян запитує, чи слід оновити інформацію для користувачів про простій, що показує, що його турбота стосується комунікації з користувачами, а не довжини простою, технічних проблем чи продуктивності сервера.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
