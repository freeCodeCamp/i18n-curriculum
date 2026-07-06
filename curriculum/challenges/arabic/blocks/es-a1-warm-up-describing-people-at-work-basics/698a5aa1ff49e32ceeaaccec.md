---
id: 698a5aa1ff49e32ceeaaccec
title: المهمة 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

الآن تتدرب كاميلا على كيفية قول `número de teléfono` بالإسبانية، والتي تعني "رقم الهاتف".

لاحظ أن كلمة `número` تحتوي على علامة تشكيل فوق حرف `u` وكلمة `teléfono` تحتوي على علامة تشكيل فوق الحرف الثاني `e`.

# --instructions--

استمع إلى التسجيل الصوتي واكتب الكلمة أدناه.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

هذه الكلمة تعني حرفيًا "رقم" بالإسبانية. تذكر أن تضع علامة التشكيل فوق حرف `u` وأن تبدأ الكلمة بحرف كبير.

---

`teléfono`

### --feedback--

هذه الكلمة تعني حرفيًا "هاتف" بالإسبانية. تذكر أن تضع علامة التشكيل فوق الحرف الثاني `e`.

# --explanation--

`Número de teléfono` تعني "رقم الهاتف" بالإسبانية.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
