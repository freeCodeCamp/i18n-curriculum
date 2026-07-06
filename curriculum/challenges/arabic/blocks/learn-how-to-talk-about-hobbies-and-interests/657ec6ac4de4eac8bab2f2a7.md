---
id: 657ec6ac4de4eac8bab2f2a7
title: المهمة 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

يمكن استخدام كلمة `date` في سياقات مختلفة. غالبًا ما تشير إلى لقاء رومانسي بين شخصين، لكنها قد تعني أيضًا ببساطة موعدًا أو حدثًا مخططًا بين أصدقاء أو زملاء. على سبيل المثال:

`Let's set a date for our next meeting.` - هنا، تُستخدم كلمة `date` بمعناها غير الرومانسي، وتشير إلى اختيار يوم للاجتماع.

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

هذه الكلمة تحدد نوع النشاط المخطط له، وتوضح أنه نزهة تتضمن ركوب الدراجات.

---

`date`

### --feedback--

هذه الكلمة تشير إلى اجتماع أو حدث محدد بموعد.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
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
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
