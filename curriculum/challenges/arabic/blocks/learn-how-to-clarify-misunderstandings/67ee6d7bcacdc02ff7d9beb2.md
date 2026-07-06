---
id: 67ee6d7bcacdc02ff7d9beb2
title: المهمة 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

تُستخدم هذه الكلمة للحديث عن وجود شيء ما أو للإشارة إلى أن شيئًا ما حاضر أو يحدث. إنها اختصار لـ `there is`.

---

`problem`

### --feedback--

تشير هذه الكلمة إلى مشكلة أو صعوبة تحتاج إلى حل أو إصلاح.

---

`with`

### --feedback--

تُظهر هذه الحرف الجر العلاقة أو الاتصال بين شيئين.

---

`event handling`

### --feedback--

تشير هذه العبارة المكونة من كلمتين إلى الطريقة التي يستجيب بها البرنامج أو مواقع الويب للأفعال، مثل النقرات أو ضغطات المفاتيح، التي ينفذها المستخدم. تنتهي الكلمة الثانية بـ `-ing`.

# --explanation--

تُستخدم عبارة `There's a problem with` لوصف أن شيئًا ما لا يعمل بشكل صحيح. تعني وجود مشكلة أو صعوبة مرتبطة بشيء محدد. على سبيل المثال:

`There's a problem with the network.` – هذا يعني أن الشبكة لا تعمل بشكل صحيح.

تشير عبارة `Event handling` إلى كيفية إدارة البرنامج أو موقع الويب لأفعال المستخدم مثل النقرات، وضغطات لوحة المفاتيح، أو تحركات الفأرة. على سبيل المثال:

`There's an issue with event handling.` - هذا يعني أن البرنامج لا يستجيب بشكل صحيح لأفعال المستخدم.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
