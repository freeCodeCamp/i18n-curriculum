---
id: 663a4d6ec33accaf2ec7be49
title: المهمة 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile` هو ما يحدث عندما ترفع زوايا فمك لتُظهر السعادة. هو شيء تفعله بوجهك عندما تكون سعيدًا أو تريد أن تكون لطيفًا.

`Friendly` تصف شخصًا طيبًا، لطيفًا، وسهل الحديث معه. الشخص الودود يجعل الآخرين يشعرون بالراحة والسعادة.

`A friendly smile` هو ابتسامة تُظهر أنك لطيف وترحب بالآخرين. تجعل الآخرين يشعرون بالرضا وتُظهر رغبتك في الصداقة.

استمع إلى الحوار واملأ الفراغات.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

هذا الفراغ يصف شخصًا لطيفًا، سهل الحديث معه، ومرحبًا بالآخرين.

---

`smile`

### --feedback--

الفعل الذي تفعله عندما تريد إظهار السعادة بفمك.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
