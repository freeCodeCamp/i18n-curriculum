---
id: 67d3f4b1be72cc09bd3ac4be
title: المهمة 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

هذا الفعل الناقص يعبر عن الضرورة أو الالتزام.

---

`do`

### --feedback--

يتبع هذا الفعل `must` ليشير إلى فعل مطلوب.

# --explanation--

`Must` هو فعل ناقص يُستخدم للتعبير عن الضرورة أو الالتزام. على سبيل المثال:

- `You must wear a seatbelt while driving.` - هذا مطلوب.

- `We must submit the report by Friday.` - هذا ضروري.

دائمًا ما يتبع الأفعال الناقصة الشكل الأساسي للفعل (بدون `to`).

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.02,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
