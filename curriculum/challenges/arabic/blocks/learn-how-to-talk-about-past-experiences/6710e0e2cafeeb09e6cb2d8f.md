---
id: 6710e0e2cafeeb09e6cb2d8f
title: المهمة 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

استمع إلى التسجيل الصوتي وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

هذا هو الفعل المساعد المستخدم لتكوين زمن `Past Continuous` بصيغة المتكلم المفرد.

---

`working`

### --feedback--

هذا هو الفعل الرئيسي في زمن `Past Continuous`، ويصف القيام بعمل أو جهد.

---

`were`

### --feedback--

هذا هو الفعل المساعد المستخدم لتكوين زمن `Past Continuous` بصيغة المتكلم الجمع.

---

`updating`

### --feedback--

هذا هو الفعل الرئيسي في زمن `Past Continuous`، ويصف الاستمرار في تحسين أو تحديث شيء ما.

# --explanation--

يُستخدم زمن `Past Continuous` لوصف أفعال كانت مستمرة في وقت محدد في الماضي. عند استخدام جملتين في زمن `Past Continuous` معًا، غالبًا ما تصفان أفعالًا متزامنة أو تحدث في نفس الوقت.

في هذه الجملة، تصف ليندا كيف كانت هي وفريقها يعملون ويحدثون واجهة المستخدم باستمرار طوال المشروع. هذا يوضح وجود فعلين حدثا في نفس الوقت في الماضي، ما يعطي سياقًا أو خلفية لكل منهما. على سبيل المثال:

`While I was preparing the report, they were testing the new features.` - هذا يعني أن عملي في إعداد التقرير واختبارهم للميزات الجديدة حدثا في نفس الوقت.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
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
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
