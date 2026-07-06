---
id: 698a5b056fac9afc70ef3cad
title: المهمة 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

لنراجع بعض الدول التي تعلمتها حتى الآن.

| الدولة | الجنسية (مؤنث) | الجنسية (مذكر) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

في اللغة الإسبانية، أسماء الدول أسماء علم وتبدأ دائمًا بحرف كبير.

لاحظ أن الجنسيات `brasileño`/`brasileña` و`panameño`/`panameña` تستخدم الحرف الفريد `eñe` (`ñ`).

كاميلا تتدرب على بعض هذه الدول. هل يمكنك تحديدها؟

# --instructions--

استمع إلى الصوت وأكمل المتتالية أدناه.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

هذه الدولة هي الأكبر في أمريكا الجنوبية وتبدأ بحرف كبير.

---

`Panamá`

### --feedback--

هذه الدولة معروفة بقناتها الشهيرة. تذكر وضع علامة التشكيل على الحرف الأخير `a` وكتابة الحرف الأول بحرف كبير.

# --explanation--

المتتالية هي `Brasil` - `Colombia` - `Panamá`.

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
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
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
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
