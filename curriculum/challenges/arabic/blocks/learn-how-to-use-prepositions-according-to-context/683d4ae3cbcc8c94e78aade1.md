---
id: 683d4ae3cbcc8c94e78aade1
title: المهمة 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يشرح بوب؟

## --answers--

أن مخرج الطوارئ مسدود.

### --feedback--

بوب لا يقول إن المخرج مسدود - هو فقط يذكر موقعه.

---

أن الباب الخلفي يحتاج إلى قفل جديد.

### --feedback--

بوب لا يذكر أي شيء عن الأقفال أو حاجة الباب الخلفي إلى إصلاحات.

---

أن غرفة الخادم تحتاج إلى تنظيف.

### --feedback--

لا يوجد ذكر للتنظيف في جملة بوب.

---

أن شيئًا ما يقع بالقرب من مخرج الطوارئ.

## --video-solution--

4

# --explanation--

يقول بوب، `Exactly. It's in the back, next to the emergency exit`. هذا يعني أنه يؤكد موقع شيء ما - بجانب مخرج الطوارئ مباشرةً.

هو لا يتحدث عن إصلاحات أو تنظيف أو مشاكل.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
