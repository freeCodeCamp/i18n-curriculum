---
id: 695fea6173bbffcaa3ffc36d
title: المهمة 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

هناك طريقتان شائعتان للسؤال عن اسم شخص ما في اللغة الإسبانية.

كلاهما يُستخدم في الإسبانية اليومية ولهما نفس المعنى. الفرق فقط في طريقة التركيب.

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

أي من الأسئلة التالية **يشبه** ما تسمعه في الصوت؟

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

هذا السؤال يسأل عن مكان إقامة شخص ما.

---

`¿Cuál es tu apellido?`

### --feedback--

هذا يسأل عن اسم عائلة شخص ما.

---

`¿Tienes apodo?`

### --feedback--

هذا يسأل إذا كان لدى شخص ما لقب.

## --video-solution--

1

# --explanation--

يقول إستيبان `¿Cómo te llamas?`. هذه واحدة من أكثر الطرق شيوعًا للسؤال عن اسم شخص ما في الإسبانية. سؤال آخر شائع جدًا وله نفس المعنى هو:

`¿Cuál es tu nombre?`

يُستخدم كلا السؤالين في الإسبانية اليومية للسؤال عن اسم الشخص. الفرق فقط في طريقة التركيب:

- `¿Cómo te llamas?` يستخدم الفعل `llamarse` (أن يُدعى).
- `¿Cuál es tu nombre?` يسأل مباشرة عن الاسم كاسم.

في هذه المهمة، الإجابة الصحيحة هي الخيار الذي يسأل عن اسم شخص ما.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
