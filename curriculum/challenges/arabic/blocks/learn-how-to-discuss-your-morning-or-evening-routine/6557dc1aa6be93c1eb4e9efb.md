---
id: 6557dc1aa6be93c1eb4e9efb
title: المهمة 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

كلمة `if` تعني "سواء كان الأمر كذلك أم لا". على سبيل المثال:

`She checks her emails to see if there are any urgent updates.` - هذا يعني أنها تحاول معرفة ما إذا كانت هناك تحديثات.

يمكن أن تكون `If` أيضًا جزءًا من جملة شرطية، تُظهر حالة محتملة ونتيجتها. على سبيل المثال:

`If there are urgent updates, I will reply immediately.` - هذا يعني أن الرد يعتمد على شرط وجود تحديثات عاجلة.

# --questions--

## --text--

ماذا توحي سارة باستخدامها `if` في قولها عن فحص البريد الإلكتروني والرسائل؟

## --answers--

هي دائمًا تجد تحديثات عاجلة من فريقها.

### --feedback--

`If` لا توحي بيقين العثور على تحديثات عاجلة.

---

أحيانًا توجد تحديثات عاجلة، وأحيانًا لا.

---

هي لا تفحص بريدها الإلكتروني ورسائلها أبدًا.

### --feedback--

سارة في الواقع تقول إنها تفحص بريدها الإلكتروني ورسائلها.

---

فحص البريد الإلكتروني ليس جزءًا من روتينها.

### --feedback--

سارة تذكر أن فحص البريد الإلكتروني والرسائل جزء من روتينها.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
