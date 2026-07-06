---
id: 67ee4cbb541a7a0ae61bcc9f
title: المهمة 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

هل هذا الخطأ الصغير خطير؟

## --answers--

لا، ولا يحتاجون إلى فعل أي شيء حياله.

### --feedback--

صوفي لا تقول إنه مشكلة كبيرة، لكن يجب عليهم إصلاحها.

---

نعم، سيُعطّل النظام بأكمله.

### --feedback--

صوفي لا تقول إنه مشكلة كبيرة، فقط شيء يجب عليهم إصلاحه.

---

نعم، صوفي قلقة جدًا بشأنه.

### --feedback--

صوفي ليست قلقة جدًا، لكنها ما زالت تعتقد أنه يجب إصلاحه.

---

لا، لكن يجب إصلاحه على أي حال.

## --video-solution--

4

# --explanation--

`It's not a big deal` تعني أن المشكلة ليست خطيرة. على سبيل المثال:

- **Monica:** `I can't join the meeting today.`

- **Eva:** `It's not a big deal. I'll take notes for you.` - غياب الاجتماع مقبول، وهذه الشخص يمكنه المساعدة.

تقول صوفي أيضًا `we should fix it before it causes problems`، مما يعني أنه من الأفضل إصلاحه الآن قبل أن يصبح خطيرًا.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
