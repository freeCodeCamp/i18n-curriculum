---
id: 67325f4cff0ac10ffe3e5bec
title: المهمة 114
challengeType: 19
dashedName: task-114
lang: en-US
---

<!-- (audio) James: It's interesting to think about it. I used to just write code without thinking much about the end user. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يصف جيمس عن طريقته في كتابة الشفرة؟

## --answers--

عادة كان يمارسها في الماضي.

---

شيء يخطط للقيام به في المستقبل.

### --feedback--

جيمس لا يتحدث عن خطط مستقبلية؛ بل يعكس شيئًا فعله سابقًا.

---

عادة لا يزال يمارسها الآن.

### --feedback--

يستخدم جيمس عبارة `used to`، التي تظهر أنه يصف شيئًا فعله في الماضي وليس حاليًا.

---

عملية لم يتبعها أبدًا.

### --feedback--

يصف جيمس عادة كان يمارسها ذات مرة، لذا فهي ليست شيئًا لم يفعله أبدًا.

## --video-solution--

1

# --explanation--

يقول جيمس، `I used to just write code without thinking much about the end user.`

تشير عبارة `Used to` إلى عادة أو فعل في الماضي لم يعد صحيحًا الآن.

تُظهر هذه الجملة أنه كان يكتب الشفرة سابقًا دون التفكير كثيرًا في المستخدم النهائي لكنه غيّر طريقته منذ ذلك الحين.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
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
      "filename": "B1_3-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 34.44
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
      "finishTime": 2.84,
      "dialogue": {
        "text": "It's interesting to think about it.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 2.92,
      "finishTime": 6.16,
      "dialogue": {
        "text": "I used to just write code without thinking much about the end user,",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.66
    }
  ]
}
```
