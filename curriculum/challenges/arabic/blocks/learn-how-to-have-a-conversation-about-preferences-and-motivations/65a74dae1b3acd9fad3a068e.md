---
id: 65a74dae1b3acd9fad3a068e
title: المهمة 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` تعني تحديد شخص أو شيء سبق أن رأيته، أو الإقرار بوجود أو صحة شيء ما. على سبيل المثال: `I recognize your efforts in completing this project.`

`Recognition` هو الاسم المشتق من `recognize` ويشير إلى فعل الإقرار أو منح التقدير لشخص على جهوده أو إنجازاته. على سبيل المثال: `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

هذا الفعل يعني أداء نشاط أو تمرين بشكل متكرر أو منتظم بهدف تحسين أو الحفاظ على مستوى المهارة.

---

`recognition`

### --feedback--

هذا الاسم يشير إلى فعل أو عملية الإقرار بجهود أو إنجازات أو صفات شخص ما.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 41.5,
      "finishTimestamp": 47.12
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
      "finishTime": 6.62,
      "dialogue": {
        "text": "For me, I like the idea of practicing my skills and getting recognition for my contributions.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 7.12
    }
  ]
}
```
