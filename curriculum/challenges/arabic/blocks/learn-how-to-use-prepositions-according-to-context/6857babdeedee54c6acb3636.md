---
id: 6857babdeedee54c6acb3636
title: المهمة 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

أين تُخزن الشاشات الآن؟

## --answers--

في نهاية موقف السيارات.

### --feedback--

سارة لم تذكر موقف السيارات.

---

داخل غرفة تكنولوجيا المعلومات.

### --feedback--

تم نقلها من غرفة تكنولوجيا المعلومات سابقًا.

---

بجانب مكتب الأمن.

### --feedback--

لا يوجد ذكر لمكتب الأمن.

---

بالقرب من ماكينة القهوة مباشرة.

## --video-solution--

4

# --explanation--

تعطي سارة تعليمات واضحة تنتهي بنقطة مرجعية: `the coffee machine`.

تشرح أنه بعد السير في الممر والانعطاف يسارًا، يمكن العثور على الشاشات مقابل ماكينة القهوة، مما يجعل ماكينة القهوة أقرب علامة مرئية للعثور عليها.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
