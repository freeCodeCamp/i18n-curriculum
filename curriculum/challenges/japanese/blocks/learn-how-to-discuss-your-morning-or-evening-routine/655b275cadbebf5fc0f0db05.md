---
id: 655b275cadbebf5fc0f0db05
title: タスク 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

`take` は状況によって異なる意味を持つことがあります。学習の文脈では、`take` はクラスやコースに参加することを意味します。例えば：

- `I take online lessons at 7.` - ここでの `take` はレッスンに参加することを意味します。

- `She is taking a programming course this semester.` - ここでの `taking` は彼女がコースに登録して参加していることを意味します。

ですので、`take lessons` や `take a course` と言うときは、何かを物理的に取るのではなく、それらに参加したり出席したりすることを話しています。

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

この動詞はレッスンに参加する動作を表しています。

---

`online`

### --feedback--

この言葉は仮想環境を指しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
