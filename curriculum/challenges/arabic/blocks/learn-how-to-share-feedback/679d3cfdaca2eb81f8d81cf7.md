---
id: 679d3cfdaca2eb81f8d81cf7
title: المهمة 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا تطلب ماريا من جيمس أن يفعل؟

## --answers--

إصلاح المشكلة فورًا.

### --feedback--

ماريا لا تطلب من جيمس إصلاح المشكلة على الفور.

---

الإبلاغ عن المشكلة إلى العميل.

### --feedback--

ماريا لم تذكر إعلام العميل.

---

التحقيق في المشكلة.

---

تجاهل المشكلة في الوقت الحالي.

### --feedback--

ماريا لا تطلب من جيمس تجاهل المشكلة.

## --video-solution--

3

# --explanation--

`Can` تُستخدم عادةً لطلب شيء بأدب، تطلب من شخص أن يفعل شيئًا بطريقة غير رسمية. على سبيل المثال:

`Can you send me the report by noon?` - هذه طريقة مهذبة لطلب إرسال تقرير.

في هذا الحوار، تطلب ماريا من جيمس التحقيق في المشكلة.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
