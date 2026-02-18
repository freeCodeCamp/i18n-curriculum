---
id: 65fc9be86f2ae26ddcdf0bb3
title: 任務 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

聆聽 Maria 並回答問題。

# --questions--

## --text--

根據 Maria，什麼可以提升他們的動力？

## --answers--

擁有一個大型團隊

### --feedback--

思考到底是什麼具體因素讓團隊更有動力，而不僅僅是團隊的規模。

---

休息很長時間

### --feedback--

考慮是否提到休息作為提升動機的方法。

---

看到團隊受到啟發

---

快速解決問題

### --feedback--

反思解決問題的速度是否是 Maria 凸顯標示為激勵的因素。

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
