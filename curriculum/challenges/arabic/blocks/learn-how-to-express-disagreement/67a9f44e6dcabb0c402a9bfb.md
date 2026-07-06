---
id: 67a9f44e6dcabb0c402a9bfb
title: المهمة 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يريد بوب أن يعرف؟

## --answers--

هل اشترى الموظفون بالفعل أثاث المكتب.

### --feedback--

بوب لا يطلب تأكيد عمليات الشراء.

---

كم يكلف أثاث المكتب.

### --feedback--

بوب لا يسأل عن السعر.

---

هل ستزيد الشركة المخصص المالي.

### --feedback--

بوب لا يناقش تغييرات المخصص المالي.

---

هل تعتقد آنا أن استخدام المخصص المالي لأثاث المكتب فكرة جيدة.

## --video-solution--

4

# --explanation--

يسأل بوب، `Do you think that's a good idea?` هذه طريقة لطلب رأي شخص ما حول اقتراح أو خطة. إليك طرقًا أخرى لطلب الرأي:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

في هذا الحوار، يشير بوب إلى استخدام الموظفين للمخصص المالي للعمل عن بُعد لشراء أثاث المكتب. بدلًا من إبداء رأيه الخاص، يسأل آنا عن رأيها.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
