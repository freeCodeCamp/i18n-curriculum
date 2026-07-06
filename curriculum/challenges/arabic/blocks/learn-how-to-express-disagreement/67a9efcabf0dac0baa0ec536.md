---
id: 67a9efcabf0dac0baa0ec536
title: المهمة 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

فكر فيما يحتاجه الناس لتحسين مساحة العمل في المنزل. يشمل ذلك المكاتب والكراسي والرفوف.

# --explanation--

`Office furniture` تشير إلى المكاتب والكراسي والرفوف وغيرها من العناصر المستخدمة في مساحة العمل.

في هذا الحوار، يتحدث بوب عن كيفية اختيار الموظفين إنفاق بدل العمل عن بُعد. بما أن العمل من المنزل يتطلب إعدادًا مريحًا ومنتجًا، يستخدم كثيرون هذا البدل لشراء أثاث المكتب مثل الكراسي المريحة أو المكاتب الواسعة.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
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
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
