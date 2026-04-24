---
id: 65fc9be86f2ae26ddcdf0bb3
title: タスク 36
challengeType: 19
dashedName: task-36
lang: en-US
---


<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

マリアの話を聞いて質問に答えてください。

# --questions--

## --text--

マリアによると、何が彼らのモチベーションを高めることができますか？

## --answers--

大きなチームを持つこと

### --feedback--

チームの規模だけでなく、具体的に何がチームのモチベーションを高めるのか考えてみてください。

---

長い休憩を取ること

### --feedback--

休憩がモチベーションを高める方法として言及されているか考えてみてください。

---

チームがやる気に満ちているのを見ること

---

問題を素早く解決すること

### --feedback--

マリアがモチベーションの源として強調しているのが問題解決の速さかどうか考えてみてください。

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
