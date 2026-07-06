---
id: 675ecedbb04f6ca6dd620f0e
title: المهمة 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

هذا نوع من الهجمات الإلكترونية حيث يتسلل المخترق سرًا إلى وسط شخصين أو نظامين يتواصلان مع بعضهما. يمكن للمخترق رؤية المعلومات التي تُشارك أو تغييرها أو سرقتها دون أن يعلم أحد. هذه كلمة مركبة، تذكر استخدام `-`. الحرفان الأولان من الكلمة الأولى والرابعة مكتوبان بحروف كبيرة.

---

`attacks`

### --feedback--

هذه الكلمة بصيغة الجمع تعني أفعال المخترقين أو المجرمين لإلحاق الضرر بنظام الكمبيوتر، سرقة المعلومات، أو التسبب في مشاكل.

# --explanation--

`Man-in-the-Middle` (أو `MITM`) هو نوع من الهجمات حيث يتسلل المخترق سرًا بين شخصين أو نظامين يتواصلان. يستمع المخترق إلى المعلومات التي تُشارك أو يغيرها دون أن يعلم أحد. على سبيل المثال:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` - تظاهر المخترق بأنه البنك، واعترض المعلومات، وسرق بيانات تسجيل دخول المستخدم. سمح هذا للمخترق بالوصول إلى حساب البنك دون علم المستخدم.

`Attacks` هي أفعال يقوم بها المخترقون لإلحاق الضرر بأنظمة الكمبيوتر، سرقة المعلومات، أو التسبب في مشاكل. على سبيل المثال:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` - يشير ذلك إلى أن المخترق أرسل كمية كبيرة من حركة المرور المزيفة إلى الموقع، مما تسبب في تعطل الخادم أو بطئه. هذا منع المستخدمين الحقيقيين من الوصول إليه، مما تسبب في انقطاع الخدمة.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
