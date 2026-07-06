---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: المهمة 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما الذي كان يجب على مارك فعله أيضًا؟

## --answers--

كان يجب عليه إعادة كتابة شفرة البرنامج بالكامل.

### --feedback--

لم يكن على مارك إعادة كتابة كل شيء.

---

كان يجب عليه اختبار الشفرة أولًا.

---

كان يجب عليه إزالة كل التعليقات.

### --feedback--

التعليقات مفيدة ولا يجب إزالتها.

---

كان يجب عليه تخطي الاختبار لأنه يستغرق وقتًا طويلاً.

### --feedback--

الاختبار خطوة مهمة قبل إرسال الشفرة.

## --video-solution--

2

# --explanation--

مجموعة `test suite` هي مجموعة من الاختبارات التي تتحقق مما إذا كان البرنامج يعمل بشكل صحيح. على سبيل المثال:

- `We ran the test suite to check if the app works properly.` - نفذ الفريق كل الاختبارات لضمان عمل التطبيق كما هو متوقع.

- `We need to add more tests to the test suite to check for edge cases.` - يجب على الفريق إضافة المزيد من الاختبارات لتغطية كل الحالات الممكنة.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
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
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
