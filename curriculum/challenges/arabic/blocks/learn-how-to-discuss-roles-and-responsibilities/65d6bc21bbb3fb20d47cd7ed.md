---
id: 65d6bc21bbb3fb20d47cd7ed
title: المهمة 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

سؤال `What's her role?` هو طريقة لمعرفة وظيفة أو منصب شخص ما في مجموعة أو مشروع. كلمة `Role` تعني الجزء أو العمل الذي يقوم به شخص ما في موقف معين. على سبيل المثال، إذا كان `role` لشخص في مدرسة هو معلم، فهذا يعني أن عمله هو تعليم الطلاب.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

هذه الكلمة توضح أن توم يتحدث عن وظيفة أو دور امرأة في شيء ما.

---

`role`

### --feedback--

هذه الكلمة تعني الوظيفة أو المنصب الذي يشغله شخص ما في موقف معين.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
