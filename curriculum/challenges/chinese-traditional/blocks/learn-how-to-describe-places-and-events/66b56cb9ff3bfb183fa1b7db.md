---
id: 66b56cb9ff3bfb183fa1b7db
title: 任務 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

聆聽音訊以完成以下句子。

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

這個字用來指定目前正在討論的模組。

---

`new`

### --feedback--

最近的事情。

---

`module`

### --feedback--

訓練程式的特定零件或部分。

# --explanation--

`Module` 指的是課程或訓練程式中的一個單元或章節。例如：

- `The new module on cybersecurity will be added next week。` - 這裡，`module` 是指專注於網路安全訓練的特定零件。

請注意 `this`、`new` 和 `module` 這些字的用法。`This` 用來指定他們正在談論的模組，`new` 表示這是最近新增的，而 `module` 指的是訓練的某個部分。

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
