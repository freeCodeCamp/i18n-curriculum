---
id: 68da8dffcffd794e83de9d6c
title: المهمة 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تقول Chen Na لتحية مجموعة من الأشخاص؟

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

هذه تحية لشخص واحد، لكن Chen Na تحيي أكثر من شخص.

---

`您们好 (nín men hǎo)`

### --feedback--

هذا الشكل غير شائع في اللغة الصينية.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

هذا يعني أيضًا "مرحبًا بالجميع"، لكن Chen Na تستخدم عبارة مختلفة.

## --video-solution--

3

# --explanation--

السؤال يسأل عما تقوله Chen Na لتحية **مجموعة من الأشخاص**.

`你好 (nǐ hǎo)` تحية لشخص واحد، بينما `您好 (nín hǎo)` تحية مهذبة لشخص واحد. `您们好 (nín men hǎo)` غير شائعة في الصينية؛ `您 (nín)` صيغة مهذبة للمفرد، ولا تُجمع عادة.

العبارة الصحيحة لتحية مجموعة هي `你们好 (nǐ men hǎo)`، وهي طريقة شائعة لقول "مرحبًا بالجميع". `大家好 (dà jiā hǎo)` طريقة أخرى لتحية مجموعة، ستتعلمها مع تقدمك.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
