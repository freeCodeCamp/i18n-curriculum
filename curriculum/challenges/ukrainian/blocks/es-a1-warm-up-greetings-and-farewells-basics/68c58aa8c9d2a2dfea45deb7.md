---
id: 68c58aa8c9d2a2dfea45deb7
title: Завдання 7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

Елена прощається, але очікує побачити вас знову.

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яку фразу використовує Елена, щоб сказати "побачимось пізніше"?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

Це прощання, але більш остаточне. Говорячий використовує іншу фразу.

---

`Chao`

### --feedback--

Це також неформальний спосіб попрощатися, але це не та фраза, що в аудіо.

---

`¡Hola!`

### --feedback--

Це означає "Привіт", загальне вітання, але це не те, що каже Елена.

## --video-solution--

1

# --explanation--

`Hasta luego` — це загальний спосіб сказати "до побачення" іспанською. Це перекладається як "побачимось пізніше".

Цю фразу використовують, коли ви очікуєте побачити людину знову, але не обов’язково скоро. Наприклад:  

`Hasta luego, Marta.` – Побачимось пізніше, Марто.

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
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
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
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
