---
id: 693aebb31ed98f7aea7d1a5d
title: المهمة 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

في هذه المهمة، ستسمع باستِي يشارك رقم هاتفه الكامل، بما في ذلك رمز الدولة. يُنطق الرقم على شكل مجموعات من الأرقام.

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

أي من الأرقام التالية هو رقم هاتف باستِي؟

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

الأرقام النهائية ليست ما يقوله باستِي.

---

+520 4489 2201

### --feedback--

رمز الدولة الذي يقوله باستِي ليس 520.

---

+502 4498 2201

### --feedback--

هناك خطأ صغير في الأرقام الأربعة الوسطى.

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201` تعني "ورقمي هو +502 4489 2201".

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
