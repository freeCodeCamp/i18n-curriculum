---
id: 6939b0e1fac80c2b4fdf8ded
title: Завдання 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

У цьому завданні Басті по буквах вимовляє свій нікнейм.

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

Це перша літера, яку Басті використовує, щоб почати вимовляти свій нікнейм.

---

`t`

### --feedback--

Ця літера йде після "s" у слові "Basti".

---

`i`

### --feedback--

Це остання літера в "Basti". Прислухайтеся до голосного звуку в кінці.

# --explanation--

Басті вимовляє свій нікнейм як `B-a-s-t-i`.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
