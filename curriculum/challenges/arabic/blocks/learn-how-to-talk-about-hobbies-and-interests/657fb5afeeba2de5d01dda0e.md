---
id: 657fb5afeeba2de5d01dda0e
title: المهمة 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

كيف يرد توم على دعوة سارة إلى مؤتمر الخيال العلمي؟

## --answers--

يقبل فورًا.

### --feedback--

توم لا يقبل الدعوة. يذكر عدم اهتمامه بالخيال العلمي.

---

يرفض بأدب.

---

يُظهر عدم اهتمام.

### --feedback--

بينما يعبر توم عن عدم اهتمامه، فإن رده يتعلق أكثر برفض الدعوة بأدب بدلاً من مجرد إظهار عدم الاهتمام.

---

يتجاهل الدعوة.

### --feedback--

توم يعترف بالدعوة ويرد عليها، لذا فهو لا يتجاهلها.

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
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
