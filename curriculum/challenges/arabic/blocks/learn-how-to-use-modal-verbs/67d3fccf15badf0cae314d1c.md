---
id: 67d3fccf15badf0cae314d1c
title: المهمة 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

هذا الفعل يُظهر الضرورة، بمعنى أن شيئًا ما مطلوب.

---

`do`

### --feedback--

هذا الفعل يتبع `need` عند السؤال عن إجراء.

# --explanation--

يُستخدم `Need to` عند السؤال عن الإجراءات الضرورية. يتبعه الشكل الأساسي للفعل (`do`). على سبيل المثال:

- `We need to do more testing before releasing the app.` - من الضروري اختبار التطبيق قبل إطلاقه.

- `We need to do some updates to fix the bugs.` - من الضروري تحديث النظام لحل المشاكل.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
