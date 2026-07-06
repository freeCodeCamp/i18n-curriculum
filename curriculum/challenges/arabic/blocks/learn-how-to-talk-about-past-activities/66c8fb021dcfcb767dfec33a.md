---
id: 66c8fb021dcfcb767dfec33a
title: المهمة 16
challengeType: 19
dashedName: task-16
lang: en-US
---
<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

أي عبارة أدناه صحيحة؟

## --answers--

لم يصلحوا أي مشاكل مثل هذه من قبل.

### --feedback--

فكر فيما إذا كانت ليندا تذكر أي خبرة مع مشاكل مشابهة.

---

لقد أصلحوا هذه المشكلة بالذات بالفعل في مشروع آخر.

### --feedback--

تأمل فيما إذا كانت ليندا تقول إن لديهم خبرة مع هذه المشكلة المحددة أو شيء مشابه.

---

لم يصلحوا هذه المشكلة بالذات، لكنهم أصلحوا مشاكل مشابهة من قبل.

---

لقد أصلحوا هذه المشكلة عدة مرات من قبل.

### --feedback--

تأمل فيما إذا كانت ليندا تتحدث عن إصلاح هذه المشكلة بالذات أو شيء مشابه.
  
## --video-solution--

3

# --explanation--

للعثور على الإجابة الصحيحة، ركز على ما إذا كانت ليندا تتحدث عن إصلاح الـ `exact issue` أو الـ `similar issues`.

توضح ليندا أنهم لم يصلحوا هذه المشكلة بالذات من قبل، لكنها تذكر أيضًا أنهم حلوا مشاكل مشابهة في الماضي.

يجب أن تُظهر الإجابة الصحيحة هذا التوازن—الاعتراف بعدم وجود تطابق دقيق مع تأكيد الخبرة السابقة مع مشاكل ذات صلة.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
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
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
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
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
