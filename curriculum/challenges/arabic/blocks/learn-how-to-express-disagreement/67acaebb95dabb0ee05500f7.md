---
id: 67acaebb95dabb0ee05500f7
title: المهمة 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

تعني هذه الكلمة عقبة أو شيئًا يبطئ التقدم.

# --explanation--

الـ`setback` هو شيء يؤخر أو يمنع التقدم. قد تجعل الحواسيب البطيئة أو غير الفعالة المهام تستغرق وقتًا أطول، مما يقلل الكفاءة. على سبيل المثال:

- `The project faced a setback due to a critical bug.` - تأخر المشروع أو واجه مشاكل بسبب خطأ برمجي خطير.

- `Losing important data was a major setback for the team.` - فقدان البيانات تسبب في صعوبات وأبطأ عمل الفريق.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
