---
id: 67ee4cbb541a7a0ae61bcc9f
title: Завдання 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чи є ця невелика помилка серйозною?

## --answers--

Ні, і їм не потрібно нічого з цим робити.

### --feedback--

Софі не каже, що це серйозна проблема, але її слід виправити.

---

Так, це зламає всю систему.

### --feedback--

Софі не каже, що це серйозна проблема, лише що її слід виправити.

---

Так, Софі дуже хвилюється через це.

### --feedback--

Софі не дуже хвилюється, але все одно вважає, що це треба виправити.

---

Ні, але це все одно слід виправити.

## --video-solution--

4

# --explanation--

`It's not a big deal` означає, що проблема несерйозна. Наприклад:

- Особа 1: `I can't join the meeting today.`

- Особа 2: `It's not a big deal. I'll take notes for you.` — Пропустити зустріч — це нормально, і ця людина може допомогти.

Софі також каже `we should fix it before it causes problems`, що означає, що краще виправити це зараз, перш ніж воно стане серйозним.

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
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
