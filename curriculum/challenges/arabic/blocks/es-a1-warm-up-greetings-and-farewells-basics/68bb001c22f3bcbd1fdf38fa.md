---
id: 68bb001c22f3bcbd1fdf38fa
title: المهمة 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

تريد إيلينا أن تقول "مرحبًا". ستسمع هذه الكلمة طوال الوقت في الإسبانية عندما يلتقي الناس ببعضهم.

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.
هناك إجابة صحيحة واحدة فقط. إذا احتجت مساعدة، انقر على **الشرح** في أسفل الدرس.

# --questions--

## --text--

ما الكلمة التي تستخدمها إيلينا لتقول "مرحبًا"؟

## --answers--

`Hola`

---

`Adiós`

### --feedback--

هذا يعني عكس ما يقوله المتحدث. افتح قسم الشرح إذا احتجت مساعدة إضافية.

---

`Chao`

### --feedback--

هذا يعني عكس ما يقوله المتحدث. افتح قسم الشرح إذا احتجت مساعدة إضافية.

---

`Buenos días`

### --feedback--

هذا يعني "صباح الخير"، لكنه ليس ما تسمعه في الصوت.

## --video-solution--

1

# --explanation--

كلمة `Hola` هي تحية. تُستخدم عند لقاء شخص ما، مشابهة لـ"Hello" أو "Hi". على سبيل المثال:

`¡Hola, buenos días!` – مرحبًا، صباح الخير!

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
