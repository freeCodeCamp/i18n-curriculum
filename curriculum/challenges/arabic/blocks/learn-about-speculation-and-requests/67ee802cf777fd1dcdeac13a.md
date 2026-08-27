---
id: 67ee802cf777fd1dcdeac13a
title: المهمة 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما المتطلب الذي ذكرته صوفي؟

## --answers--

يجب على Mark حذف الأسطر غير الضرورية من الكود.

### --feedback--

لم تتحدث Sophie عن حذف الكود.

---

يجب على Mark إعادة كتابة الكود بالكامل.

### --feedback--

لم تقترح Sophie إعادة كتابة الكود بالكامل.

---

يجب على مارك تجنب استخدام الحلقات.

### --feedback--

صوفي لم تقل شيئًا عن تجنب الحلقات.

---

يجب على Mark استخدام ملاحظات في الكود الخاص به.

## --video-solution--

4

# --explanation--

`comment` هو ملاحظة في الكود تساعد على شرح ما يفعله. على سبيل المثال:

- `I added a comment to explain why this loop is necessary.` - كتبت تعليقًا لتوضيح سبب استخدام هذه الحلقة.

- `You can use comments to leave notes about issues that need fixing later.` - يمكن إضافة التعليقات في الكود كتذكير بالأمور التي تحتاج إلى إصلاح أو تحسين.

تساعد التعليقات الآخرين على فهم الكود وتذكرك بالتفاصيل المهمة عند مراجعة الكود لاحقًا.

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
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
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
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
