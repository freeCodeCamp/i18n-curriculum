---
id: 655b275cadbebf5fc0f0db05
title: المهمة 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

يمكن أن يكون لـ `take` معانٍ مختلفة حسب السياق. في سياق التعلم، تعني `take` حضور أو المشاركة في صف أو دورة. على سبيل المثال:

- `I take online lessons at 7.` - هنا، تعني `take` حضور الدروس.

- `She is taking a programming course this semester.` - هنا، تعني `taking` أنها مسجلة وتحضر الدورة.

عندما تقول `take lessons` أو `take a course`، فأنت تتحدث عن الانضمام أو الحضور، وليس أخذ شيء ماديًا.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

هذا الفعل يصف القيام بالمشاركة في الدروس.

---

`online`

### --feedback--

تشير هذه الكلمة إلى بيئة عمل افتراضية.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
