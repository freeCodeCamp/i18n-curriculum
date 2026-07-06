---
id: 680e2de44baaad7305adc8ee
title: المهمة 46
challengeType: 22
dashedName: task-46
lang: en-US
---

<!-- (Audio) Josh: I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`I'll draft a new quote with these specifics and send it over to you by tomorrow. BLANK for you?`

## --blanks--

`Does that work`

### --feedback--

تُستخدم هذه الكلمات الثلاث معًا للسؤال بأدب عما إذا كانت خطة أو اقتراح مقبولًا. الحرف الأول من الكلمة الأولى مكتوب بحرف كبير.

# --explanation--

`Does that work` طريقة مهذبة للتحقق مما إذا كان الاقتراح أو الترتيب مناسبًا لشخص ما. على سبيل المثال:

`We can meet at 3 PM. Does that work for you?` – هذا يسأل إذا كان الوقت مناسبًا أو ملائمًا للشخص الآخر.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Josh",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.14,
      "finishTimestamp": 75.94
    }
  },
  "commands": [
    {
      "character": "Josh",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Josh",
      "startTime": 1,
      "finishTime": 6.8,
      "dialogue": {
        "text": "I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you?",
        "align": "center"
      }
    },
    {
      "character": "Josh",
      "opacity": 0,
      "startTime": 7.3
    }
  ]
}
```
