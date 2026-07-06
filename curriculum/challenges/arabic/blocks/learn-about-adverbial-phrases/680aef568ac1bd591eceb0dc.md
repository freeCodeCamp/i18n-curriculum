---
id: 680aef568ac1bd591eceb0dc
title: المهمة 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

هذا شكل مختصر لشيء يعني رسائل أو محتوى يُنشأ للترويج لمنتج أو خدمة أو حدث. استخدم صيغة الجمع.

# --explanation--

الـ`ad` (اختصار لـ`advertisement`) هو قطعة محتوى مصممة لجذب انتباه الناس وتشجيعهم على شراء شيء ما، أو استخدام خدمة، أو اتخاذ إجراء. يمكن أن تظهر الإعلانات على وسائل التواصل الاجتماعي، والمواقع الإلكترونية، والتلفاز، والراديو، وأكثر من ذلك. على سبيل المثال:

- `They launched a new ad campaign for their latest product.` – هذا يعني أن الشركة أنشأت وشاركت محتوى ترويجي لزيادة الاهتمام بمنتج.

- `We saw a lot of online ads for the holiday sale.` – هذا يعني وجود العديد من الرسائل الترويجية عن التخفيضات على المواقع أو التطبيقات.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
