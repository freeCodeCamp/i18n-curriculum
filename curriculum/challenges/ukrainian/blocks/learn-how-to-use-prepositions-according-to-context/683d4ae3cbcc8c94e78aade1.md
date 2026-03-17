---
id: 683d4ae3cbcc8c94e78aade1
title: Завдання 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що пояснює Боб?

## --answers--

Що аварійний вихід заблоковано.

### --feedback--

Боб не каже, що вихід заблоковано — він лише вказує його розташування.

---

Що на задніх дверях потрібно замінити замок.

### --feedback--

Боб нічого не згадує про замки чи ремонт задніх дверей.

---

Що серверну кімнату потрібно прибрати.

### --feedback--

У реченні Боба немає згадки про прибирання.

---

Що щось розташоване біля аварійного виходу.

## --video-solution--

4

# --explanation--

Боб каже, `Exactly. It's in the back, next to the emergency exit`. Це означає, що він підтверджує розташування чогось — прямо біля аварійного виходу.

Він не говорить про ремонт, прибирання чи проблеми.

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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
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
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
