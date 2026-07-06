---
id: 67efebdf734ad521ace8a89e
title: المهمة 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

تشير هذه العبارة المكونة من كلمتين إلى خلل أمني في نظام يفتقر إلى تصحيح أو تحديث لمعالجته ويمكن استغلاله.

# --explanation--

`Unpatched` تعني أن شيئًا ما لم يُحدَّث أو يُصلح.

`Vulnerability` تشير إلى ضعف في نظام يمكن استغلاله.

معًا، يشير `unpatched vulnerability` إلى ضعف أمني لم يُصلح أو يُحدَّث. يمكن للقراصنة استغلال هذه الضعف للهجوم على النظام. على سبيل المثال:

`We need to fix the unpatched vulnerability now.` - الفريق يعرف عن مشكلة أمنية لكنها لم تُصلح بعد.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
