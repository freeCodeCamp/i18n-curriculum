---
id: 67c03f86bccfec0be6de656b
title: المهمة 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تُعبّر آنا؟

## --answers--

هي تختلف تمامًا مع بوب وترفض قلقه.

### --feedback--

تعترف آنا برأي بوب قبل أن تُعطي رأيها الخاص.

---

تفهم آنا قلق بوب لكنها لا تزال ترى أن المرونة خيار أفضل.

---

هي لا تفهم قلق بوب.

### --feedback--

تفهم آنا معلمة بوب.

---

توافق آنا مع بوب وتغيّر رأيها.

### --feedback--

آنا لا توافق بوب بالكامل.

## --video-solution--

2

# --explanation--

تستخدم آنا `I see your point, but` لتُظهر أنها تفهم قلق بوب بينما تعرض رأيًا مختلفًا.

تعتقد أن المرونة حل أفضل من التمسك بفئة واحدة.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
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
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
