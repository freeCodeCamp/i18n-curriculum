---
id: 67f0ee4cc8f7fe5fd534eff4
title: タスク 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

この2語のフレーズは、アイデアや提案に対する同意や承認を示すために使われます。最初の単語は`-s`で終わります。

---

`appreciate`

### --feedback--

この単語は、何かに感謝していることを意味します。助けやサポート、してもらったことに対して感謝の気持ちを表します。

# --explanation--

`Sounds good`は、話者が言われたことに同意または承認していることを意味します。例えば：

`Your idea sounds good.` – これは話者がそのアイデアを良いと思い、同意していることを意味します。

`I appreciate`は、感謝の気持ちを伝える方法です。例えば：

`I appreciate your help with the project.` – これは受けた助けに感謝していることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
