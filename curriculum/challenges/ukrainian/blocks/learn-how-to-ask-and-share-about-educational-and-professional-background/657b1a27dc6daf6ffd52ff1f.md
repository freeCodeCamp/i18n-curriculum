---
id: 657b1a27dc6daf6ffd52ff1f
title: Завдання 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

В англійській мові іменник з суфіксом `'s`, за яким слідує другий іменник, використовується для позначення приналежності або володіння.

Якщо перший іменник у однині, як у `Sarah's laptop`, це означає, що ноутбук належить Сарі. Однак, якщо перший іменник у множині, структура змінюється на іменник із суфіксом `'`, як у `teachers' office`, що вказує на офіс для вчителів.

# --questions--

## --text--

Що означає `master's degree` у контексті діалогу?

## --answers--

Ступінь для шкільних вчителів

### --feedback--

`Master's degree` означає вищий академічний ступінь, а не конкретно для вчителів.

---

Ступінь початкового рівня освіти

### --feedback--

`Master's degree` — це кваліфікація вищої освіти, що перевищує початковий рівень.

---

Ступінь у володінні навичками

### --feedback--

Хоч це й натякає на експертизу, `master's degree` конкретно означає академічну кваліфікацію.

---

Вищий академічний ступінь

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
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
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
