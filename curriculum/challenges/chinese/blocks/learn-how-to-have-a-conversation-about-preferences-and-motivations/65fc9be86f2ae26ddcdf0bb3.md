---
id: 65fc9be86f2ae26ddcdf0bb3
title: 任务 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

听 Maria 并回答问题。

# --questions--

## --text--

根据 Maria，什么可以提升他们的动力？

## --answers--

拥有一个大团队

### --feedback--

考虑是什么具体因素使团队更有动力，而不仅仅是团队的规模。

---

休息很长时间

### --feedback--

考虑是否提到休息作为提高动力的一种方式。

---

看到团队受到激励

---

快速解决问题

### --feedback--

反思解决问题的速度是否是 Maria 强调的激励因素。

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
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
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
