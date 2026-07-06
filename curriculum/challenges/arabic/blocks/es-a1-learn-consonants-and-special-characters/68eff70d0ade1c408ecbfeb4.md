---
id: 68eff70d0ade1c408ecbfeb4
title: المهمة 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

الحرف `d` يُسمى `de`.

في بداية الكلمة أو بعد `l` أو `n`، يكون صوته أقوى، كما في كلمة `dos` ("اثنان"). لكنه يكون أضعف بين الحروف المتحركة، كما في كلمة `idea` ("فكرة").

مثال على ذلك هو `doctor` ("طبيب").

# --instructions--

استمع إلى الصوت واكتب الحرف في الفراغ أدناه.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

هذا هو الحرف الرابع في الأبجدية.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
