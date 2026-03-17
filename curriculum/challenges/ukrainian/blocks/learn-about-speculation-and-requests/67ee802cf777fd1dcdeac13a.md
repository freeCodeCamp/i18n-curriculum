---
id: 67ee802cf777fd1dcdeac13a
title: Завдання 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яку вимогу згадує Софі?

## --answers--

Mark повинен видалити непотрібні лінії коду.

### --feedback--

Софі не говорить про видалення коду.

---

Mark повинен повністю переписати свій код.

### --feedback--

Софі не пропонує переписувати весь код.

---

Mark повинен уникати використання циклів.

### --feedback--

Софі нічого не каже про уникнення циклів.

---

Mark повинен використовувати коментарі у своєму коді.

## --video-solution--

4

# --explanation--

`comment` — це примітка в коді, яка допомагає пояснити, що він робить. Наприклад:

- `I added a comment to explain why this loop is necessary.` — ви написали коментар, щоб описати, чому використовується певний цикл.

- `You can use comments to leave notes about issues that need fixing later.` — коментарі можна додавати в код як нагадування про речі, які потрібно виправити або покращити.

Коментарі допомагають іншим зрозуміти код і нагадують вам про важливі деталі під час повторного перегляду коду пізніше.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
