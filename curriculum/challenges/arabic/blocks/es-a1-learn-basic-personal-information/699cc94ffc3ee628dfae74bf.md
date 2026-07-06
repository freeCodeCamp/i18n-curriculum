---
id: 699cc94ffc3ee628dfae74bf
title: المهمة 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` مشتقة من الفعل `ser` وتُستخدم للتعريف أو تقديم شيء ما. على سبيل المثال:

- `Es mi número.` - هذا هو رقمي.
  
- `Es mi correo.` - هذا هو بريدي الإلكتروني.

عند تهجئة عنوان بريد إلكتروني، تُقال بعض الرموز بصوت عالٍ:

`Punto` تُستخدم للدلالة على الرمز `.` على سبيل المثال:

`ana.lopez` تُقرأ: `ana punto lopez`.

`Arroba` تُستخدم للدلالة على الرمز `@`. على سبيل المثال:

`ana.lopez@ejemplo.com` تُقرأ: `ana punto lopez arroba ejemplo punto com`.

# --instructions--

استمع إلى التسجيل الصوتي وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

هذا الشكل من `ser` يُستخدم للتعريف أو تقديم شيء.

---

`punto`

### --feedback--

تُستخدم هذه الكلمة عند نطق الرمز `.` في عنوان البريد الإلكتروني.

---

`arroba`

### --feedback--

تُستخدم هذه الكلمة عند نطق الرمز `@`.

---

`punto`

### --feedback--

تظهر هذه الكلمة مرة أخرى قبل الحرفين الأخيرين `p r`.

# --explanation--

الجملة الكاملة هي:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` تُقدّم المعلومة.

`Punto` تمثل الرمز `.`

`Arroba` تمثل الرمز `@`

تُستخدم هذه الكلمات عادة عند تهجئة عنوان بريد إلكتروني بصوت عالٍ.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_mateo_email_dialogue_with_camila.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 35.09
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 19.07,
      "dialogue": {
        "text": "Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 19.57
    }
  ]
}
```

