---
id: 66df6aad5cfef4692e2e2a5a
title: المهمة 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

كلمة تُظهر حدوث فعلين في نفس الوقت أو اعتماد فعل على آخر.

---

`more`

### --feedback--

كلمة تشير إلى كمية أو عدد أكبر.

---

`users`

### --feedback--

كلمة تشير إلى الأشخاص الذين يتنقلون في الواجهة المحدثة.

---

`navigate`

### --feedback--

كلمة تعني التحرك داخل شيء ما أو من خلاله، مثل موقع ويب أو تطبيق.

# --explanation--

`As` يمكن أن تُستخدم بمعنى "أثناء" أو "عندما"، لتُظهر أن فعلًا واحدًا سيحدث بينما يحدث فعل آخر. على سبيل المثال:

- `As I was walking home, they called me.` - اتصلوا بك أثناء سيرك إلى المنزل.

- `You will get better at coding as you practice more.` - ستتحسن أثناء أو عندما تمارس أكثر.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
