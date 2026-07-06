---
id: 657e1fd7b5ffaebc0ff4bd9f
title: المهمة 26
challengeType: 19
dashedName: task-26
lang: en-US
---

<!-- (audio) Tom: Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me. -->

# --description--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

لماذا يشكر توم صوفي؟

## --answers--

لأنه أعطاه تطبيقًا لإدارة الوقت.

### --feedback--

توم يشكر صوفي على النصائح، وليس لإعطائه تطبيقًا.

---

لأنه يجد نصائح صوفي مفيدة.

---

لدعوته لتناول الغداء.

### --feedback--

يشكرها على النصيحة، وليس على دعوة الغداء.

---

لمساعدته في مشروع.

### --feedback--

امتنان توم مرتبط بالنصائح حول التنظيم، وليس بمساعدة محددة في المشروع.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 58.29,
      "finishTimestamp": 63.00
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.71,
      "dialogue": {
        "text": "Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 6.21
    }
  ]
}
```
