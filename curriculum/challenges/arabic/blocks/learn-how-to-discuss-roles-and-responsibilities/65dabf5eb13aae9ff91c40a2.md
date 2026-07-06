---
id: 65dabf5eb13aae9ff91c40a2
title: المهمة 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

العبارة `search for` تعني البحث عن شيء أو محاولة إيجاده من خلال الاستكشاف. على سبيل المثال، `I need to search for my lost keys` تعني أنك تبحث عن المفاتيح.

الكلمة `expensive` تصف شيئًا يكلف الكثير من المال. على سبيل المثال، `That car is too expensive for me` تعني أن السيارة تكلف كثيرًا.

`solution` تعني إجابة لمشكلة أو طريقة لحل مسألة.

`Doesn't/don't have to` تُستخدم للتعبير عن عدم وجود حاجة أو ضرورة لفعل شيء ما.

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

هذه الكلمة تعني البحث عن شيء بعناية.

---

`for`

### --feedback--

يُستخدم هذا الحرف مع `search` لتوضيح ما الذي تحاول إيجاده.

---

`expensive`

### --feedback--

هذه الكلمة تصف شيئًا يكلف الكثير من المال.

---

`solutions`

### --feedback--

هذه إجابات أو طرق لحل مشكلة.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
