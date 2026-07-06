---
id: 67caefd11f4cf72cbf5bdd46
title: المهمة 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (audio) Jake: Not really. SafeGuard is more focused on security, so it might not integrate as easily with other platforms. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`BLANK. SafeGuard is more focused on security, so it might not integrate as easily with other platforms.`

## --blanks--

`Not really`

### --feedback--

هذه العبارة المكونة من كلمتين طريقة غير رسمية لقول "لا" أو "ليس تمامًا". تُستخدم غالبًا عندما تريد أن تعارض بأدب أو تعطي ردًا أخف وأقل مباشرة. الحرف الأول من الكلمة الأولى يكون كبيرًا.

# --explanation--

`Not really` تُستخدم عادةً لإعطاء إجابة سلبية، لكنها بنبرة أخف. هي أكثر عفوية من قول `No` ببساطة. على سبيل المثال:

- **قائد الفريق:** `Do you think this software is user-friendly?`

- **المتدرب:** `Not really.` - هذا يعني أنه ليس سهل الاستخدام جدًا، لكن المتحدث قد لا يكون متأكدًا تمامًا.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 56.88,
      "finishTimestamp": 62.58
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 6.7,
      "dialogue": {
        "text": "Not really. Safeguard is more focused on security, so it might not integrate as easily with other platforms.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 7.2
    }
  ]
}
```
