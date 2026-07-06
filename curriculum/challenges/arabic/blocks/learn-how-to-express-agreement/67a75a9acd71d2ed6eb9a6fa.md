---
id: 67a75a9acd71d2ed6eb9a6fa
title: المهمة 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

تشير هذه العبارة المكونة من كلمتين إلى مواقف مختلفة تمثل كيف قد يتفاعل الشخص مع المنتج.

# --explanation--

`User scenarios` تشير إلى مواقف مختلفة تصف كيف يتفاعل المستخدمون مع المنتج لتحقيق هدف. تساعد الفرق على اختبار وتحسين تجربة المستخدم. على سبيل المثال:

`We created user scenarios to see how customers navigate the checkout process.` – هذا يعني أن الفريق حاكى طرقًا مختلفة يكمل بها المستخدمون عملية الشراء لتحديد أي مشكلات.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
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
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
