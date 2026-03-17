---
id: 657e1fd7b5ffaebc0ff4bd9f
title: Завдання 26
challengeType: 19
dashedName: task-26
lang: en-US
---

<!-- (audio) Tom: Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me. -->

# --description--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чому Том дякує Софі?

## --answers--

За те, що вона дала йому застосунок для керування часом.

### --feedback--

Том дякує Софі за поради, а не за застосунок.

---

Тому що він вважає поради Софі корисними.

---

За те, що запросила його на обід.

### --feedback--

Він дякує їй за поради, а не за запрошення на обід.

---

За допомогу з проєктом.

### --feedback--

Вдячність Тома пов’язана з порадами щодо організації, а не з конкретною допомогою з проєктом.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 58.29,
      "finishTimestamp": 63.00
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
      "finishTime": 5.71,
      "dialogue": {
        "text": "Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 6.21
    }
  ]
}
```
