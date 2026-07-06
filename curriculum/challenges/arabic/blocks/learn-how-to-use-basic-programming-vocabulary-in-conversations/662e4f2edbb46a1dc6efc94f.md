---
id: 662e4f2edbb46a1dc6efc94f
title: المهمة 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

يُستخدم `Common` لوصف شيء يحدث كثيرًا أو يشترك فيه العديد من الأشخاص. على سبيل المثال: `Colds are a common illness during the winter.` هذا يعني أنه مشكلة صحية معتادة يواجهها كثير من الناس في ذلك الوقت من السنة.

تشير كلمة `Challenge` إلى مهمة أو موقف يتطلب جهدًا خاصًا لإنجازه لأنه صعب. على سبيل المثال: `Learning to ride a bike was a big challenge for her at first.` تصف هذه الجملة كيف أن تعلم ركوب الدراجة كان صعبًا في البداية.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

هذا الوصف يُشير إلى شيء يحدث كثيرًا أو معتاد بين مجموعة.

---

`challenge`

### --feedback--

هذا الاسم يُشير إلى مهمة أو مشكلة صعبة تتطلب جهدًا لحلها أو تجاوزها.

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
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
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
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
