---
id: 656ab31ebccec247fde7cee4
title: المهمة 64
challengeType: 22
dashedName: task-64
lang: en-US
---

<!--
AUDIO REFERENCE:
Tom: Awesome. My computer and drawing tablet are great, too. 
-->

# --description--

كلمة `Awesome` يستخدمها الأشخاص عندما يعجبهم شيء كثيرًا. تعني تقريبًا `Very good`. هي طريقة غير رسمية للتعبير عن الإعجاب أو الاستحسان.

# --fillInTheBlank--

## --sentence--

`BLANK. My computer and drawing tablet are great, too.`

## --blanks--

`Awesome`

### --feedback--

هذه الكلمة تعني `very good` أو `I really like it`. الحرف الأول منها مكتوب بحرف كبير.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 32.3,
      "finishTimestamp": 36
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
      "finishTime": 4.25,
      "dialogue": {
        "text": "Awesome. My computer and drawing tablet are great, too.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.75
    }
  ]
}
```
