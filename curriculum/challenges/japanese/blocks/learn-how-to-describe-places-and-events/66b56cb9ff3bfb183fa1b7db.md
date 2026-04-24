---
id: 66b56cb9ff3bfb183fa1b7db
title: タスク 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

この単語は、現在話題になっているモジュールを特定するために使われます。

---

`new`

### --feedback--

最近のものを指します。

---

`module`

### --feedback--

トレーニングプログラムの特定の部分やセクションを指します。

# --explanation--

`Module` は、コースやトレーニングプログラムの単位やセクションを指します。例えば：

- `The new module on cybersecurity will be added next week.` - ここでは、`module` がサイバーセキュリティに焦点を当てたトレーニングの特定の部分を指しています。

`this`、`new`、`module` の使い方に注目してください。`This` は話しているモジュールを特定するために使われ、`new` はそれが最近追加されたことを示し、`module` はトレーニングのセクションを指しています。

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
