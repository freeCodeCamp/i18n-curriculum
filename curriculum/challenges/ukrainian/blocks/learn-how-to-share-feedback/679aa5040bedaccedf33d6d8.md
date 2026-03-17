---
id: 679aa5040bedaccedf33d6d8
title: Завдання 45
challengeType: 19
dashedName: task-45
lang: en-US
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Чому Браян вважає, що не добре, коли всі думають однаково?

## --answers--

Тому що вони можуть пропустити важливі деталі.

---

Тому що це зробить прийняття рішень швидшим.

### --feedback--

Браян не каже, що згода є корисною.

---

Тому що розбіжності завжди спричиняють проблеми.

### --feedback--

Насправді Браян каже, що деякі розбіжності корисні, а не те, що вони спричиняють проблеми.

---

Тому що ніхто не буде ділитися своїми думками.

### --feedback--

Браян не говорить про те, що люди відмовляються ділитися своїми думками.

## --video-solution--

1

# --explanation--

Структура `if + verb in the Simple Past` з наступним `might` у наслідковій умові використовується для опису гіпотетичної ситуації з можливим результатом. Наприклад:

`If you studied more, you might pass the exam.` — це означає, що є можливість скласти екзамен, якщо людина більше вчитиметься.

У цьому діалозі `If we all agreed on everything, we might miss important details` виражає можливий від’ємний наслідок повної згоди.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
