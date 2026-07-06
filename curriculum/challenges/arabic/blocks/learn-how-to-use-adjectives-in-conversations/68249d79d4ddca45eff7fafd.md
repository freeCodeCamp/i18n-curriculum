---
id: 68249d79d4ddca45eff7fafd
title: المهمة 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تخطط جيسيكا أن تفعل بالمعلومات؟

## --answers--

تجاهلها الآن وانتظر المزيد من المراجعات.

### --feedback--

تقول جيسيكا إنها ستنظم المعلومات وتشاركها، وليس تجاهلها.

---

نظمها في تقرير وناقشها مع الآخرين.

---

اطلب من المستخدمين اختبارها مرة أخرى قبل إجراء التغييرات.

### --feedback--

لم تذكر أي شيء عن إعادة الاختبار أو مراجعة المستخدمين.

---

أرسلها مباشرة إلى العميل بدون مراجعة.

### --feedback--

تخطط جيسيكا للتحدث مع فريقها أولًا، وليس إرسالها مباشرة إلى العميل.

## --video-solution--

2

# --explanation--

تقول Jessica إنها ستقوم بـ`put all this information into a report` و`talk about it with the team tomorrow`. هذا يدل على أنها تخطط لتنظيم التفاصيل وإجراء مناقشة مع فريقها.

تقول أيضًا إن التعليقات `should help`، مما يعني أنها سترشد خطواتهم التالية.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
