---
id: 66b56cb9ff3bfb183fa1b7db
title: 任务 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

听录音，补全下面的句子。

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

这个词用于指定当前正在讨论的模块。

---

`new`

### --feedback--

最近的事情。

---

`module`

### --feedback--

训练程序的特定部分或章节。

# --explanation--

`Module` 指课程或培训程序的一个单元或部分。例如：

- 下周将添加关于网络安全性的 `module`。这里，`module` 指的是专注于网络安全性的培训的特定部分。

注意 `this`、`new` 和 `module` 这几个词的用法。`This` 用于指定他们正在讨论的模块，`new` 表示这是一个新添加的内容，`module` 指的是培训的一个部分。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
