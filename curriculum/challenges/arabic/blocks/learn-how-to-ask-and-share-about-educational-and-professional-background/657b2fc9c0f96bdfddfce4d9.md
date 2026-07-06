---
id: 657b2fc9c0f96bdfddfce4d9
title: المهمة 90
challengeType: 22
dashedName: task-90
lang: en-US
---

<!-- (Audio) Anna: I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics. -->

# --description--

مصطلح `pique one's interest` يعني جعل شخص ما يشعر بالفضول أو يرغب في معرفة المزيد. يُستخدم عندما يجذب شيء انتباهك ويثير اهتمامك. على سبيل المثال:

- `The new AI tool really piqued my interest.` - جعلك تشعر بالفضول وأردت معرفة المزيد عنه.

- `Her presentation on cybersecurity piqued the team's interest.` - أصبح الفريق أكثر فضولًا وأراد معرفة المزيد.

# --fillInTheBlank--

## --sentence--

`I BLANK a course in organizational BLANK, and it BLANK my interest in the workplace and employee dynamics.`

## --blanks--

`took`

### --feedback--

هذه الكلمة تشير إلى القيام بالمشاركة في دورة أو إكمالها. يجب أن تستخدم الصيغة الماضية بشكل صحيح.

---

`psychology`

### --feedback--

هذه الكلمة تصف دراسة العقل والسلوك، خاصة في سياق بيئة العمل هنا.

---

`piqued`

### --feedback--

هذه الكلمة تعني إثارة أو تحفيز الاهتمام أو الفضول. يجب أن تستخدم الصيغة الماضية بشكل صحيح.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 13.14,
      "finishTimestamp": 18.62
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
      "finishTime": 6.48,
      "dialogue": {
        "text": "I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.98
    }
  ]
}
```
