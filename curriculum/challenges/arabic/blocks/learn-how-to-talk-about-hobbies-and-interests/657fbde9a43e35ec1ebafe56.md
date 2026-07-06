---
id: 657fbde9a43e35ec1ebafe56
title: المهمة 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تعني عبارة `Would you like to come?` في هذا السياق؟

## --answers--

رفض دعوة.

### --feedback--

العبارة لا تعني قول "لا". هي عن تقديم دعوة.

---

تقديم دعوة.

---

التعبير عن الامتنان.

### --feedback--

العبارة لا تعني "شكرًا". هي عن دعوة شخص ما.

---

طلب معلومات.

### --feedback--

العبارة ليست سؤالًا للحصول على معلومات، بل هي دعوة مهذبة لحدث.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
