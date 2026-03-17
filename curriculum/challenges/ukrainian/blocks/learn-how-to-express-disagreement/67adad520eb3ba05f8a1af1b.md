---
id: 67adad520eb3ba05f8a1af1b
title: Завдання 33
challengeType: 19
dashedName: task-33
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що має сказати Анна, щоб погодитися з Бобом?

## --answers--

`I don't understand.`

### --audio-id--

ENd6da13d0

### --feedback--

Ця фраза натякає на нерозуміння, але Анні потрібно показати згоду з ідеєю Боба.

---

`That makes sense.`

### --audio-id--

ENc50c4990

## --video-solution--

2

# --explanation--

`That makes sense` — це природний спосіб показати згоду. Люди використовують цю фразу в розмовах, коли приймають або розуміють пропозицію. Наприклад:

- Особа 1: `We should optimize the code before adding new features to avoid performance issues.`

- Особа 2: `That makes sense. A slow app will frustrate users.` — ця людина погоджується і розуміє, чому оптимізувати код спочатку — це хороша ідея.

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
      "startTimestamp": 52,
      "finishTimestamp": 58.24
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
      "finishTime": 2.54,
      "dialogue": {
        "text": "So maybe we should focus on both.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 2.54,
      "finishTime": 7.24,
      "dialogue": {
        "text": "Find a balance between comfort and technology to ensure everyone has what they need.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.74
    }
  ]
}
```
