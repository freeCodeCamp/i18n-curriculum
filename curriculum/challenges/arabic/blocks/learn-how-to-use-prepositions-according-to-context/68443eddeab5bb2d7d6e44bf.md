---
id: 68443eddeab5bb2d7d6e44bf
title: المهمة 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

هذه العبارة المكونة من كلمتين تعني ترتيب أو تجهيز شيء للاستخدام.

---

`break room`

### --feedback--

هذه العبارة المكونة من كلمتين تشير إلى مكان يمكن للموظفين فيه الاسترخاء من العمل.

# --explanation--

`Set up` تعني تجهيز أو ترتيب شيء للاستخدام. على سبيل المثال:

`We need to set up the new computers before the meeting.` – هذا يعني جعلها جاهزة.

`Break room` هو مكان في المكتب يستريح فيه الناس أو يأكلون أو يسترخون. على سبيل المثال:

`Let's meet in the break room after lunch.` – هذا يشير إلى مكان مخصص لأخذ استراحة.

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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
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
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
