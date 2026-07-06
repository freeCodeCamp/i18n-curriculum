---
id: 69399bbb6d7a7bfeedaddd96
title: المهمة 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

الفعل `escribir` يعني "يكتب". عندما يريد المتحدثون بالإسبانية شرح كيفية كتابة أو تهجئة كلمة، غالبًا ما يستخدمون التعبير `se escribe`.

هذا الشكل يأتي من الفعل `escribir` ويُستخدم عادة قبل تهجئة الأسماء أو البريد الإلكتروني أو كلمات أخرى حرفًا بحرف. على سبيل المثال:

- `Carlos se escribe C-a-r-l-o-s.` – يُهجأ اسم كارلوس بهذا الشكل C-a-r-l-o-s.

- `Mi apellido se escribe con z.` – يُهجأ اسمي الأخير بحرف z.

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

هذه الكلمة الصغيرة جزء من تعبير شائع يُستخدم عند شرح كيفية كتابة شيء ما.

---

`escribe`

### --feedback--

هذا الشكل من الفعل يأتي من `escribir` ويُستخدم عند تهجئة كلمة.

# --explanation--

يُستخدم التعبير `Se escribe` عند شرح كيفية كتابة كلمة أو اسم.

يأتي من الفعل `escribir` ويُستخدم عادة قبل تهجئة شيء حرفًا بحرف.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
