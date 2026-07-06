---
id: 67cbb5b81e5e4e3ae9ff6fb3
title: المهمة 42
challengeType: 19
dashedName: task-42
lang: en-US
---

<!-- (audio) Jake: If integration is crucial, you might have to do some extra work with SafeGuard. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يقصد جيك؟

## --answers--

SafeGuard سهل التكامل مع الأدوات الأخرى.
  
### --feedback--

ما يقوله جيك يوحي بأنه ليس سهلاً.

---

تكلفة SafeGuard تزيد عند التكامل.

### --feedback--

جيك لم يذكر التكلفة.

---

قد يتطلب التكامل مع SafeGuard جهدًا إضافيًا.

---

SafeGuard غير مرن في التكامل.

### --feedback--

جيك لم يذكر المرونة بل ركز على الحاجة إلى عمل إضافي.

## --video-solution--

3

# --explanation--

`Extra work` يعني جهدًا أو وقتًا إضافيًا مطلوبًا لتحقيق هدف.

يقترح Jake أنه `if integration is crucial` (إذا كان التكامل مهمًا جدًا)، قد تواجه Sophie تحديات مع SafeGuard، ولذلك سيتطلب الأمر عملًا إضافيًا أو جهدًا لدمجه مع منصات أخرى.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 62.88,
      "finishTimestamp": 67.4
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 5.34,
      "dialogue": {
        "text": "If integration is crucial, you might have to do some extra work with Safeguard.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
