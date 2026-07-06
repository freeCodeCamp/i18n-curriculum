---
id: 672e1fff03af3aeed5d7a84b
title: المهمة 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما رأي آنا في أفكار جيمس، وماذا تقترح؟

## --answers--

هي تختلف مع أفكار جيمس وتقترح بدء نهج جديد.

### --feedback--

تعبر آنا عن اتفاقها مع جيمس، لا اختلافها، وترغب في البقاء على اطلاع بدلاً من البدء من جديد.

---

هي تعتقد أن أفكار جيمس مربكة وتقترح التركيز فقط على أهداف إمكانية الوصول.

### --feedback--

آنا لا تجد أفكار جيمس مربكة؛ هي توافق وترغب في مراقبة التقدم في أهدافهما المشتركة.

---

هي توافق مع جيمس وتقترح البقاء على اتصال لمراقبة التقدم.

---

هي تعتقد أن أفكار جيمس غير ضرورية وتقترح إيقاف المشروع.

### --feedback--

آنا لا تقترح الإيقاف؛ هي تدعم أفكار جيمس وترغب في البقاء على اطلاع.

## --video-solution--

3

# --explanation--

توافق آنا على نهج جيمس، قائلة `That makes sense`، مما يدل على فهمها ودعمها لأفكاره. كما تقترح `keeping in touch to monitor progress`، مما يشير إلى رغبتها في البقاء على اطلاع لضمان تحقيق أهدافهما المشتركة.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
