---
id: 67f0ee4cc8f7fe5fd534eff4
title: المهمة 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

تُستخدم هذه العبارة المكونة من كلمتين لإظهار الموافقة أو القبول لفكرة أو اقتراح. تنتهي الكلمة الأولى بـ `-s`.

---

`appreciate`

### --feedback--

تعني هذه الكلمة الامتنان لشيء ما. تُظهر الشكر على المساعدة أو الدعم أو شيء تم فعله من أجلك.

# --explanation--

تعني عبارة `Sounds good` أن المتحدث يوافق أو يقر بما قيل. على سبيل المثال:

`Your idea sounds good.` – هذا يعني أن المتحدث يعتقد أن الفكرة جيدة ويوافق عليها.

عبارة `I appreciate` هي طريقة لقول شكراً أو إظهار الامتنان. على سبيل المثال:

`I appreciate your help with the project.` – هذا يعني أنك ممتن للمساعدة التي تلقيتها.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
