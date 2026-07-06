---
id: 6751bdd2f78adbed1ea0fa51
title: المهمة 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما هو قلق بريان؟

## --answers--

هل يحتاج المستخدمون إلى إعلامهم بوقت التعطل.

---

هل سيستمر وقت التعطل لفترة طويلة جدًا.

### --feedback--

بريان لا يسأل عن مدة وقت التعطل.

---

هل سيواجه المستخدمون مشكلات تقنية.

### --feedback--

بريان لم يذكر المشكلات التقنية في قلقه.

---

هل سيؤثر وقت التعطل على أداء الخادم.

### --feedback--

قلق بريان ليس حول أداء الخادم.

## --video-solution--

1

# --explanation--

يسأل بريان إذا كان يجب عليهم تحديث المستخدمين بخصوص وقت التعطل، مما يظهر أن قلقه يتعلق بالتواصل مع المستخدمين وليس بمدة وقت التعطل أو المشكلات التقنية أو أداء الخادم.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
