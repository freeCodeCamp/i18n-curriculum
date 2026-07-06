---
id: 680ae6fa6f3bb82a094cffcf
title: المهمة 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يمكن لماريا أن تقول لتُظهر أنها مندهشة إيجابيًا من النتائج؟

## --answers--

`That's impressive.`

### --audio-id--

EN70c3200b

---

`Maybe we should lower our expectations.`

### --audio-id--

EN342dc19a

### --feedback--

هذا يُظهر نقصًا في الثقة، وليس حماسًا للنتائج.

## --video-solution--

1

# --explanation--

`Impressive` تعني أن شيئًا ما يستحق الانتباه أو الإعجاب أو الاحترام لأنه جيد أو كبير أو فعّال بشكل غير عادي. على سبيل المثال:

`Your presentation was really impressive! It covered everything clearly and confidently.` – هذا يعني أن العرض كان عالي الجودة وترك أثرًا إيجابيًا قويًا.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
