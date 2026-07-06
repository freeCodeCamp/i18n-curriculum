---
id: 657eebaa042b5cda6ec2dac9
title: المهمة 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

تُستخدم عبارة `Are you kidding?` للتعبير عن عدم التصديق أو المفاجأة، أو أحيانًا لتأكيد ما إذا كان شخص ما يمزح.

إذا أخبرك صديقك أنه رأى كلبًا يركب لوح تزلج في الشارع، قد تشعر بالمفاجأة وتقول `Are you kidding?` لتسأل إذا كان جادًا حقًا أو يمزح فقط.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

يُستخدم هذا الفعل في العبارة للتعبير عن عدم التصديق أو المفاجأة ردًا على تصريح. ينتهي بـ `-ing`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
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
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
