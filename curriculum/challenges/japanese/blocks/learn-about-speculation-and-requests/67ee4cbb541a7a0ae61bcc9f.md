---
id: 67ee4cbb541a7a0ae61bcc9f
title: タスク4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

この小さなエラーは深刻ですか？

## --answers--

いいえ、何もしなくても大丈夫です。

### --feedback--

ソフィーは大きな問題だとは言っていませんが、修正すべきだと言っています。

---

はい、システム全体が壊れてしまいます。

### --feedback--

ソフィーは大きな問題だとは言っておらず、ただ修正すべきだと言っています。

---

はい、ソフィーはとても心配しています。

### --feedback--

ソフィーはあまり心配していませんが、それでも修正すべきだと思っています。

---

いいえ、でも修正すべきです。

## --video-solution--

4

# --explanation--

`It's not a big deal` は問題が深刻ではないことを意味します。例えば：

- **Monica:** `I can't join the meeting today.`

- **Eva:** `It's not a big deal. I'll take notes for you.` - 会議を欠席しても大丈夫で、この人が助けられます。

ソフィーはまた `we should fix it before it causes problems` と言っており、深刻になる前に今修正したほうが良いという意味です。

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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
