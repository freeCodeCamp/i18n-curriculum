---
id: 66b56cb9ff3bfb183fa1b7db
title: المهمة 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

استمع إلى الصوت لإكمال الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

تُستخدم هذه الكلمة لتحديد الوحدة التي يتم مناقشتها حاليًا.

---

`new`

### --feedback--

شيء حديث.

---

`module`

### --feedback--

جزء أو قسم محدد من برنامج التدريب.

# --explanation--

`Module` تشير إلى وحدة أو قسم من دورة أو برنامج تدريبي. على سبيل المثال:

- `The new module on cybersecurity will be added next week.` - هنا، تشير `module` إلى جزء محدد من التدريب يركز على الأمن السيبراني.

انتبه لكيفية استخدام الكلمات `this` و`new` و`module`. تُستخدم `This` لتحديد الوحدة التي يتحدثون عنها، و`new` تدل على أنها إضافة حديثة، و`module` تشير إلى قسم من التدريب.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
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
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
