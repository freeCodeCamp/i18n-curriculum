---
id: 66df6aad5cfef4692e2e2a5a
title: 任务 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

一个表示两个动作同时发生或一个动作依赖于另一个动作的词。

---

`more`

### --feedback--

表示更大数量或数字的词。

---

`users`

### --feedback--

一个指代使用更新后接口的用户的词。

---

`navigate`

### --feedback--

一个表示在某物（例如网站或应用程序）中移动或浏览的词。

# --explanation--

`As` 可以用来表示“当……时”或“在……期间”，表明一个动作将在另一个动作进行时发生。例如：

- `As I was walking home, they called me.` - 他们在你走回家时调用了你。

- 你在更多练习时会变得更擅长编码。

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
