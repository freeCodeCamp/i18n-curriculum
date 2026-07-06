---
id: 657fff0bfb6a28f1d70fa9ef
title: المهمة 80
challengeType: 22
dashedName: task-80
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

تُستخدم عبارة `I appreciate it, but...` للتعبير عن الامتنان تجاه عرض أو لفتة، مع رفضها بلطف أو ذكر قيد أو تفضيل شخصي.

على سبيل المثال، إذا عرض صديقك مساعدتك في تحدٍّ برمجي، وكنت ممتنًا لكنك تود المحاولة بنفسك أولًا، يمكنك أن تقول: `I appreciate it, but I want to give it a shot by myself first`.

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

تُستخدم هذه الكلمة غالبًا للتعبير عن الشكر أو الامتنان.

---

`but`

### --feedback--

تُستخدم هذه الكلمة لإدخال عبارة أو بند يُناقض ما ذُكر سابقًا.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
