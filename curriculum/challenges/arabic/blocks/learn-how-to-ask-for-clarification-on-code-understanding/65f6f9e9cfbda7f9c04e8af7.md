---
id: 65f6f9e9cfbda7f9c04e8af7
title: المهمة 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

تُستخدم العبارة `by the end of it` في الإنجليزية عادةً للإشارة إلى الخاتمة أو الجزء النهائي من عملية أو فترة زمنية. تعني أنه عند إتمام نشاط معين، سيتم تحقيق نتيجة محددة أو فهم معين.

# --questions--

## --text--

في الحوار، ماذا يعني بريان بعبارة `by the end of it`؟

## --answers--

سيتوقفون عن التحقيق.

### --feedback--

هذه العبارة تتعلق بالوصول إلى استنتاج، وليس بالضرورة التوقف عن النشاط.

---

سيبدؤون نشاطًا آخر.

### --feedback--

بريان يشير إلى نهاية التحقيق الحالي، وليس بدء شيء جديد.

---

سيأخذون استراحة.

### --feedback--

العبارة تركز على الوصول إلى فهم في نهاية العملية، وليس على أخذ استراحة.

---

سيكون لديهم فهم أوضح للوضع بعد التحقيق.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
