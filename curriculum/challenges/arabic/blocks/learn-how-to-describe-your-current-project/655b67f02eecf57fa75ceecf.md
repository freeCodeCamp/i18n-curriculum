---
id: 655b67f02eecf57fa75ceecf
title: المهمة 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

يُستخدم `stay` للدلالة على البقاء في حالة أو وضع معين. غالبًا ما يُستخدم في التعليمات أو النصائح للحفاظ على النفس في موقف محدد. على سبيل المثال:

- `Stay safe online.` - استمر في الحفاظ على الأمان أثناء استخدام الإنترنت.

- `Stay calm during the test.` - استمر في الهدوء أثناء الاختبار.

- `Stay focused on your work.` - استمر في التركيز على عملك.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

يشير هذا الفعل إلى أن صوفي تقدم المساعدة أو الدعم لفريقها بشكل نشط. ينتهي بـ `-ing`.

---

`stay`

### --feedback--

تُستخدم هذه الكلمة لاقتراح الحفاظ على حالة معينة، وفي هذا السياق تعني البقاء آمنًا أثناء التواجد على الإنترنت.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
