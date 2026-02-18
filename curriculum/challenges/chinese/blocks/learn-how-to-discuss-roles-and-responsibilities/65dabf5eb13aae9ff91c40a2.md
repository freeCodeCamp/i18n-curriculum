---
id: 65dabf5eb13aae9ff91c40a2
title: 任务 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

短语 `search for` 意味着通过探索去寻找某物或尝试查找某物。例如，`I need to search for my lost keys` 意味着在寻找丢失的密钥。

单词 `expensive` 描述花费很多钱的东西。例如，`That car is too expensive for me` 意味着那辆车花费很多。

`solution` 是问题的答案或解决问题的方法。

`Doesn't/don't have to` 用于表示没有必要或要求去做某事。

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

这个词的意思是仔细寻找某物。

---

`for`

### --feedback--

这个介词与 `search` 一起使用，用于指示你正在尝试查找的内容。

---

`expensive`

### --feedback--

这个词描述了某物花费了大量金钱。

---

`solutions`

### --feedback--

这些是答案或解决问题的方法。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
