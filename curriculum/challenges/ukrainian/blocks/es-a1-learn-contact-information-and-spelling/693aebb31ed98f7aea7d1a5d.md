---
id: 693aebb31ed98f7aea7d1a5d
title: Завдання 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

У цьому завданні ви почуєте, як Басті називає свій повний номер телефону, включно з кодом країни. Номер вимовляється групами цифр.

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Який із наведених номерів телефону належить Басті?

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

Фінальні цифри не співпадають з тим, що каже Басті.

---

+520 4489 2201

### --feedback--

Код країни, який каже Басті, не 520.

---

+502 4498 2201

### --feedback--

У середніх чотирьох цифрах є невелика помилка.

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`, означає "І мій номер +502 4489 2201".

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
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
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
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
