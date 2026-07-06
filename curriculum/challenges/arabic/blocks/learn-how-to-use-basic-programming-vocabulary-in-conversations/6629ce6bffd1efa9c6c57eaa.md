---
id: 6629ce6bffd1efa9c6c57eaa
title: المهمة 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

العبارة `how's it going?` طريقة شائعة لسؤال شخص عن حاله أو عن ما يحدث في حياته. غالبًا ما تُستخدم كتحية ودية.

على سبيل المثال، عندما تلتقي بصديق قديم، يمكنك أن تقول `Hey, how's it going? I haven't seen you for a while!` هذه طريقة غير رسمية لسؤاله عن حياته. إذا أردت أن تسأله عن أمر محدد، مثل عمله الجديد، يمكنك أن تقول `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

هذا الاختصار يُستخدم عادة في التحيات غير الرسمية. ابدأ الكلمة الأولى بحرف كبير.

---

`going`

### --feedback--

هذه الكلمة تُكمل التحية غير الرسمية الشائعة التي تسأل عن الحالة العامة لشخص ما.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
