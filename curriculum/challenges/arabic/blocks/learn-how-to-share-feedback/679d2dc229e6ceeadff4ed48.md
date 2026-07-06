---
id: 679d2dc229e6ceeadff4ed48
title: المهمة 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

تُستخدم هذه الكلمة لتجنب تكرار الفعل `update` من الجملة السابقة.

---

`delay`

### --feedback--

تعني هذه الكلمة تأجيل شيء أو جعله يحدث في وقت لاحق عن المخطط له.

# --explanation--

بدلاً من قول `If we update the software, it might delay other projects.`، يختصر جيمس العبارة إلى `If we do`. تُستخدم كلمة `do` غالبًا لتجنب تكرار الفعل أو العبارة الكاملة المستخدمة في الجملة السابقة. على سبيل المثال:

`She wants to join the meeting, and if she does, she'll need the link.` - بدلاً من قول `if she joins the meeting`، يمكنك استخدام `does` لتحل محله وبهذه الطريقة تتجنب التكرار.

`To delay` تعني جعل شيء يحدث في وقت لاحق عن المخطط له. على سبيل المثال:

`The flight was delayed due to bad weather.` - هذا يعني أن الرحلة تم تأجيلها ولم تغادر في الوقت المحدد.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
