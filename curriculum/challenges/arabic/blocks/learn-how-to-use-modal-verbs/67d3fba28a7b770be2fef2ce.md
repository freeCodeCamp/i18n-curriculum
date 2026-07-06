---
id: 67d3fba28a7b770be2fef2ce
title: المهمة 6
challengeType: 19
dashedName: task-6
lang: en-US
---

<!-- (Audio) Jessica: Hi Mark, we need to talk about security protocols for the new project. There are a few things you must do to ensure compliance. -->

<!-- SPEAKING -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

لا يمانع مارك التحدث مع جيسيكا ويريد أن يعرف ما الذي عليه فعله. ماذا سيقول؟

## --answers--

`Sorry, Jessica. I'm too busy right now.`

### --audio-id--

EN415e8cd4

### --feedback--

هذه الاستجابة لا تعكس رغبة مارك في التحدث.

---

`Sure, Jessica. What do I need to do?`

### --audio-id--

EN61f614de

## --video-solution--

2

# --explanation--

الإجابة الصحيحة تُظهر أن مارك مستعد للتحدث ويريد معرفة الخطوات اللازمة.

`Sure, Jessica` تعبر عن الموافقة والانفتاح على المحادثة.

`What do I need to do?` تُظهر أن مارك يطلب تعليمات، وهذا يتوافق مع تصريح جيسيكا حول ما يجب عليه فعله لضمان الامتثال.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "Hi, Mark. We need to talk about security protocols for the new project.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 5.22,
      "finishTime": 7.62,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.12
    }
  ]
}
```
