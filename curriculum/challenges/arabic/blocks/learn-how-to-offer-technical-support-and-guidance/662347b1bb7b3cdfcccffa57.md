---
id: 662347b1bb7b3cdfcccffa57
title: المهمة 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` هو الزمن الماضي من فعل `to hear`، والذي يعني أن تدرك شيئًا عبر السمع أو أن يتم إبلاغك بشيء ما. على سبيل المثال، `I heard the news yesterday` تعني أنك علمت بالأخبار في اليوم السابق.

في سياق البرمجيات، `authentication module` هو جزء من النظام مسؤول عن التحقق من هوية المستخدمين. يُستخدم غالبًا في أنظمة تسجيل الدخول. على سبيل المثال، `The authentication module checks the username and password` تعني أنه يتحقق من بيانات اعتماد المستخدم.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

هو الزمن الماضي من `to hear`، ويشير إلى أن برايان علم بمهمة صوفي.

---

`fixing`

### --feedback--

يشير إلى عملية إصلاح أو حل المشكلة (الخطأ البرمجي) في البرنامج.

---

`authentication`

### --feedback--

يشير إلى عملية التحقق من هوية المستخدم في وحدة التوثيق البرمجية.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
