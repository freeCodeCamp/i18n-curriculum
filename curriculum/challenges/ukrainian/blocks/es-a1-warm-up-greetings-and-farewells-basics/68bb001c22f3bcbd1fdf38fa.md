---
id: 68bb001c22f3bcbd1fdf38fa
title: Завдання 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Елена хоче сказати "привіт". Ви будете часто чути це слово іспанською, коли люди зустрічаються.

# --instructions--

Прослухайте аудіо і дайте відповідь на запитання нижче.
Є лише **одна** правильна відповідь. Якщо потрібна допомога, натисніть на **пояснення** внизу уроку.

# --questions--

## --text--

Яке слово використовує Елена, щоб сказати "привіт"?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Це означає протилежне тому, що каже мовник. Відкрийте розділ пояснень, якщо потрібна додаткова допомога.

---

`Chao`

### --feedback--

Це означає протилежне тому, що каже мовник. Відкрийте розділ пояснень, якщо потрібна додаткова допомога.

---

`Buenos días`

### --feedback--

Це означає "Доброго ранку", але це не те, що ви чуєте в аудіо.

## --video-solution--

1

# --explanation--

Слово `Hola` — це привітання. Його використовують, коли зустрічаються з кимось, подібно до "Hello" або "Hi". Наприклад:

`¡Hola, buenos días!` – Привіт, доброго ранку! 

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
