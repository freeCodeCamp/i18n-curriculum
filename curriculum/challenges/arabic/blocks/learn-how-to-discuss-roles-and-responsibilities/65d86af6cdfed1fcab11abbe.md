---
id: 65d86af6cdfed1fcab11abbe
title: المهمة 70
challengeType: 22
dashedName: task-70
lang: en-US
---

<!-- (Audio) Maria: He also ensures that everyone follows security procedures. -->

# --description--

`Follow security procedures` تعني التصرف وفقًا للقواعد أو الخطوات المصممة للحفاظ على سلامة مكان أو أشخاص. هذا الأمر مهم في العديد من المساحات، خاصة في أماكن العمل، لمنع المشكلات أو المخاطر.

تعلمت أنه بعد `everyone` يجب استخدام صيغة المفرد للفعل لأن `everyone` يُعتبر كل فرد في المجموعة ويُعامل بشكل فردي.

# --fillInTheBlank--

## --sentence--

`He also ensures that everyone BLANK BLANK BLANK.`

## --blanks--

`follows`

### --feedback--

هذه هي صيغة المفرد للفعل وتعني أن كل شخص يقوم بالفعل.

---

`security`

### --feedback--

هذه الكلمة تعني الحفاظ على سلامة الأشخاص أو الأماكن أو الأشياء من الخطر أو الأذى.

---

`procedures`

### --feedback--

هذه هي الخطوات أو القواعد التي يجب اتباعها من أجل السلامة.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.80,
      "finishTimestamp": 36.56
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.76,
      "dialogue": {
        "text": "He also ensures that everyone follows security procedures.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.26
    }
  ]
}
```
