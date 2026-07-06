---
id: 67dd5cfeacc0cad2fc967438
title: المهمة 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يريد جيمس أن يعرف؟

## --answers--

هل اتفقوا على الموعد النهائي للمرحلة الأولى.

---

هل تم إلغاء المشروع.

### --feedback--

جيمس لم يذكر إلغاء المشروع.

---

هل أليس مسؤولة عن المرحلة الأولى.

### --feedback--

جيمس لا يسأل عن المسؤوليات.

---

هل أنهى الفريق المرحلة النهائية.

### --feedback--

جيمس لا يتحدث عن المرحلة النهائية.

## --video-solution--

1

# --explanation--

تُستخدم عبارة `By the way` لتقديم موضوع جديد لكنه مرتبط في المحادثة. غالبًا ما تذكر شيئًا تذكره المتحدث للتو أو يريد التحقق منه. على سبيل المثال:

`By the way, have you seen the updated report?` – هذه العبارة تقدم سؤالًا جديدًا مرتبطًا بما كان يُناقش بالفعل.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
