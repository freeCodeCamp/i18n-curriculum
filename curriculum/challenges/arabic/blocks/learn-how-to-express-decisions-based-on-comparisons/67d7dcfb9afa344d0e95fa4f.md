---
id: 67d7dcfb9afa344d0e95fa4f
title: المهمة 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

هذه العبارة المكونة من كلمتين تعني التسبب في حدوث شيء أو النتيجة المترتبة عليه.

---

`delay`

### --feedback--

هذا يعني جعل شيء ما يستغرق وقتًا أطول من المتوقع.

# --explanation--

تعني عبارة `Lead to` التسبب في حدوث شيء أو النتيجة المترتبة عليه. على سبيل المثال:

`Poor planning can lead to missed deadlines.` – هذا يعني أنه إذا لم يتم التخطيط جيدًا، فقد لا تُلتزم المواعيد النهائية.

تعني كلمة `Delay` جعل شيء ما يستغرق وقتًا أطول من المتوقع أو تأجيله. على سبيل المثال:

`The software release was delayed due to unexpected bugs.` – هذا يعني أن الإطلاق تأخر بسبب مشاكل تقنية.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
