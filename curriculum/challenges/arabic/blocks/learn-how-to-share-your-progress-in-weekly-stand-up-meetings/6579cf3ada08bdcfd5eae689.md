---
id: 6579cf3ada08bdcfd5eae689
title: المهمة 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Sophie: Sure, Bob. I could use some help with a coding problem. -->

# --description--

في هذا الحوار، تطلب صوفي مساعدة من بوب. فهم طبيعة طلبها ضروري للتواصل الفعّال والتعاون ضمن الفريق، خصوصًا في بيئات العمل التقنية حيث حل المشكلات معًا أمر شائع.

# --questions--

## --text--

ماذا تطلب صوفي في حديثها مع بوب؟

## --answers--

تطلب المساعدة في مشكلة برمجية

---

تريد من بوب حل المشكلة نيابة عنها

### --feedback--

صوفي تطلب المساعدة، وليس بالضرورة أن يحل بوب المشكلة بالكامل بمفرده.

---

تعرض مساعدة بوب في مشكلة ما

### --feedback--

صوفي هي التي تطلب المساعدة، وليست التي تعرضها.

---

تتحدث عن مشروع مستقبلي

### --feedback--

طلب صوفي يتعلق بمشكلة برمجية حالية تواجهها، وليس مشروعًا مستقبليًا.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "6.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.9,
      "finishTimestamp": 7.58
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
      "finishTime": 3.68,
      "dialogue": {
        "text": "Sure, Bob. I could use some help with the coding problem.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.18
    }
  ]
}
```
