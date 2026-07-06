---
id: 67c4bacefd5097faecca40d4
title: المهمة 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يريد بوب أن يعرف؟

## --answers--

هل يجب عليهم إلغاء المشروع؟

### --feedback--

بوب لا يسأل عن إلغاء المشروع.

---

هل سيكون من الأفضل العمل لساعات أقل؟

### --feedback--

بوب يقترح العمل لساعات أكثر، وليس أقل.

---

هل حل الفريق المشكلة بالفعل؟

### --feedback--

بوب يسأل إذا كانت اقتراحه سيساعد، وليس إذا كانت المشكلة قد حُلت بالفعل.

---

هل سيُحسّن العمل لساعات إضافية الوضع؟

## --video-solution--

4  

# --explanation--

استخدام النفي في الأسئلة مع الأفعال المساعدة أو الأفعال الناقصة (مثل `wouldn't`، `isn't`، `doesn't`)، والتي تتطلب إجابات مباشرة بـ `yes` أو `no`، يشير إلى أن المتحدث يتوقع أن تكون الإجابة إيجابية — يفترض بوب، في هذه الحالة، أن العمل لساعات إضافية سيساعد. مثال آخر:

`Doesn't this plan seem like a good idea?` - المتحدث يتوقع من المستمع الموافقة على أن الخطة جيدة.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
