---
id: 6939b0e1fac80c2b4fdf8ded
title: المهمة 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

في هذه المهمة، يتهجى Basti لقبه حرفًا حرفًا.

# --instructions--

استمع إلى التسجيل الصوتي وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

هذا هو أول حرف يستخدمه Basti لبدء تهجئة لقبه.

---

`t`

### --feedback--

هذا الحرف يأتي بعد "s" في "Basti".

---

`i`

### --feedback--

هذا هو الحرف الأخير في "Basti". استمع إلى صوت حرف العلة في النهاية.

# --explanation--

Basti يتهجى لقبه بهذا الشكل: `B-a-s-t-i`.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
