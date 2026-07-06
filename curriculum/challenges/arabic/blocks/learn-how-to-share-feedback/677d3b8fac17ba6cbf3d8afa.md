---
id: 677d3b8fac17ba6cbf3d8afa
title: المهمة 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

هذا هو الشكل `-ing` من الفعل `say`، يُستخدم بعد حرف الجر `by` للدلالة على طريقة البدء.

---

`QA`

### --feedback--

هذا اختصار لـ `Quality Assurance`، ويشير إلى عملية ضمان أن المنتجات تفي بالمعايير المطلوبة.

# --explanation--

عندما يتبع الفعل حرف جر، يجب أن يأخذ الشكل `-ing` (المصدر المستمر). في هذه الجملة، يتبع `saying` حرف الجر `by`، مما يدل على الطريقة التي يستخدمها بوب لبدء عبارته. على سبيل المثال:

`She improved her skills by practicing regularly.` - هنا، يتبع `practicing` حرف الجر `by`، موضحًا كيف حسنت مهاراتها.

بوب يثني على جيسيكا لعملها في `QA`. `QA` تعني `Quality Assurance`. تشير إلى عملية التأكد من أن المنتجات أو الخدمات تفي بمعايير جودة محددة وتعمل بشكل صحيح. مثال آخر:

`The QA team identified several bugs during testing.` - هذا يعني أن الأشخاص المسؤولين عن ضمان جودة البرنامج تمكنوا من اكتشاف أخطاء برمجية في البرنامج قبل إصداره.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
