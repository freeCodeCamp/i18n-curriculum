---
id: 679afc19cfcee1abd9e60ce2
title: المهمة 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما الذي يعتقده بريان أنه قد يحدث إذا لم نستمع إلى من يختلفون في الفريق؟

## --answers--

قد يفقدون الدافع.

---

سيتوقفون عن الخلاف.

### --feedback--

تجاهل آراء الناس لا يوقف الخلافات؛ قد يجعلهم أقل تفاعلًا فقط.

---

سيعملون بجد أكبر لإثبات وجهة نظرهم.

### --feedback--

بريان لا يقترح أن الشعور بعدم التقدير يجعل الناس يعملون بجد أكبر.

---

سيتفقون تلقائيًا مع كل شيء.

### --feedback--

عدم الاستماع للناس لا يجعلهم يوافقون على كل شيء — بل قد يجعلهم ينفصلون عن المشاركة.

## --video-solution--

1

# --explanation--

`To feel valued` تصف الإحساس الذي تشعر به عندما تعتقد أن أفكارك وجهودك ومساهماتك مقدرة. على سبيل المثال:

`The project manager always dedicates some time during the meeting to hear what we have to say. This makes everyone in the team feel valued.` - هذا يعني أن موقف مدير المشروع يحقق نتائج جيدة للفريق.

ما يقترحه بريان هو أنه إذا تم تجاهل آراء أعضاء الفريق، فقد يشعرون بعدم الأهمية. إذا شعر أعضاء الفريق بالتقدير، فمن المرجح أن يظلوا متفاعلين ويساهموا بأفكار جديدة.

من ناحية أخرى، إذا شعر الناس أن آرائهم لا تهم، فقد ينفصلون ويفقدون الدافع للمساهمة، مما قد يضر بالتعاون والإنتاجية العامة للفريق.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
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
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
