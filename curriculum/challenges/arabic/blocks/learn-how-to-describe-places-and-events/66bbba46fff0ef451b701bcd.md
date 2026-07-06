---
id: 66bbba46fff0ef451b701bcd
title: المهمة 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

هل سارة متاحة للتحدث مع توم؟

## --answers--

لا، هي مشغولة ولا تريد معرفة مشاكله.

### --feedback--

تقول سارة إنها ليست مشغولة.

---

نعم، هي متاحة وتريد معرفة ما المشكلة.

---

لا، لا يمكنها التحدث الآن، لديها مشكلاتها الخاصة.

### --feedback--

تذكر سارة أنها ليست مشغولة.

---

نعم، ولكن للحظة فقط لأنها لديها مشكلاتها الخاصة.

### --feedback--

سارة لا تحدد الوقت؛ هي فقط تقول إنها ليست مشغولة.

## --video-solution--

2

# --explanation--

بدلاً من قولها مباشرة إنها متفرغة، تستخدم سارة الصيغة السلبية `I'm not busy` لتؤكد أن لديها وقتًا للمساعدة.

هذه طريقة مهذبة وغير مباشرة لعرض التفرغ في الإنجليزية، تُستخدم عادة لجعل المحادثة أكثر لباقة.

جملتها التالية، `What's the problem?`، تؤكد استعدادها للمساعدة بدعوة توم لشرح المشكلة.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
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
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
