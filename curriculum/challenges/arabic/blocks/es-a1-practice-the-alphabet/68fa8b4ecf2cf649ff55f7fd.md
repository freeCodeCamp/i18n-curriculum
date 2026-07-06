---
id: 68fa8b4ecf2cf649ff55f7fd
title: المهمة 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما هي الحرف **الثاني** الذي يُنطق في هذا الصوت؟

## --answers--

`b`

### --feedback--

الحرف `b` له صوت مختلف.

---

`x`

---

`z`

### --feedback--

الحرف `z` له صوت مختلف.

---

`m`

### --feedback--

الحرف `m` له صوت مختلف.

## --video-solution--

2

# --explanation--

هذه هي الحروف الثلاثة التي تُنطق في الصوت: `b`، `x`، `z`.

الحرف `x` هو الثاني. لذلك، `x` هو الإجابة الصحيحة.

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
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
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
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
