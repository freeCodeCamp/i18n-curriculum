---
id: 699eff4a6eefcef5c1d1059a
title: المهمة 24
challengeType: 22
dashedName: task-24
lang: es
---
<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

تشير كلمة `dominio` إلى الجزء الرئيسي من عنوان الويب، وهو عادة القسم الذي يأتي بعد `@` في البريد الإلكتروني أو بعد `www` في الموقع الإلكتروني.

تُستخدم عادة عند إعطاء أو تأكيد عناوين البريد الإلكتروني وروابط URL. على سبيل المثال:

`El dominio es gmail punto com.` – النطاق هو gmail.com.

`¿Cuál es el dominio?` – ما هو النطاق؟

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

تشير هذه الاسم إلى الجزء الرئيسي من عنوان الويب أو البريد الإلكتروني.

# --explanation--

`Dominio` هو اسم يُستخدم لتسمية جزء النطاق في عنوان البريد الإلكتروني أو الموقع الإلكتروني.

يظهر عادةً عندما ينطق الناس أو يؤكدون معلومات الاتصال الرقمية.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
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
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
