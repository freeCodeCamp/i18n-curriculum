---
id: 657fb5afeeba2de5d01dda0e
title: Task 81
challengeType: 19
dashedName: task-81
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

Іноді люди запрошують своїх друзів на події, які їм подобаються. Відповідь залежить від того, чи друзі зацікавлені в цій події.

# --questions--

## --text--

Як Том реагує на запрошення відвідати науково-фантастичну конвенцію?

## --answers--

Одразу погоджується

### --feedback--

Том не приймає запрошення. Він каже, що не цікавиться науковою фантастикою.

---

Ввічливо відмовляється

---

Показує незацікавленість

### --feedback--

Хоча Том каже, що не цікавиться науковою фантастикою, він ввічливо відмовляється від запрошення.

---

Ігнорує запрошення

### --feedback--

Том почув про запрошення та відповів, отже не ігнорує його.

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
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
