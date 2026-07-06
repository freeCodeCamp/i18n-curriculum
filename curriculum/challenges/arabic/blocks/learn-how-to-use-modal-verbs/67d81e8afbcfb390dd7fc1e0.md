---
id: 67d81e8afbcfb390dd7fc1e0
title: المهمة 133
challengeType: 19
dashedName: task-133
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

لم يتحقق جيك من ذلك بعد ويقول إن الفريق يجب أن يركز على شيء آخر. ماذا سيقول؟

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

ENcd1493b2

---

`I already checked, and everything looks fine.`

### --audio-id--

EN4ec0b91b

### --feedback--

لم يتحقق جيك بعد، لذلك لن يستطيع تأكيد ذلك.

## --video-solution--

1

# --explanation--

تأمين الأنظمة الحرجة عادةً ما يكون الأولوية الأولى قبل تقييم الملفات الفردية.

`Not yet.` تعني أن جيك لم يتحقق من الملفات التي تم اختراقها.

`We should focus on the critical systems first.` تعني أنه بدلاً من النظر إلى الملفات، يجب على الفريق إعطاء الأولوية لحماية الأجزاء الأساسية من النظام.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
