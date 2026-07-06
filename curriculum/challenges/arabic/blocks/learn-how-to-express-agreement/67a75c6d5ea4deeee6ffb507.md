---
id: 67a75c6d5ea4deeee6ffb507
title: المهمة 21
challengeType: 19
dashedName: task-21
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تعرض ليندا أن تفعل؟

## --answers--  

إعداد سيناريوهات المستخدم للاختبار.

---  

تخطي مرحلة الاختبار.

### --feedback--  

ليندا لا تقترح تخطي الاختبار؛ هي تساهم بنشاط فيه.

---  

اطلب من شخص آخر التعامل مع اختبار المستخدم.

### --feedback--  

ليندا لا تفوض المهمة لشخص آخر.

---  

إعادة تصميم واجهة المستخدم من الصفر.

### --feedback--  

ليندا لا تتحدث عن إعادة تصميم الواجهة.

## --video-solution--  

1  

# --explanation--  

استمع إلى الكلمات المفتاحية التي تشير إلى ما تعرض ليندا القيام به.

`I can also` – هذا يدل على أنها تتطوع للمساهمة.

`Prepare some user scenarios for testing` – هذا يوضح بجلاء المهمة التي تتحمل مسؤوليتها.

`Ensure a smooth user experience` – هذا يشرح سبب أهمية الاختبار ويعزز التزامها بالمشروع.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
