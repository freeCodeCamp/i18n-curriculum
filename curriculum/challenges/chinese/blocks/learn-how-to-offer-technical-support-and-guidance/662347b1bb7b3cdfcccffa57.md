---
id: 662347b1bb7b3cdfcccffa57
title: 任务 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` 是动词 `to hear` 的过去式，意思是通过耳朵意识到某事或被告知某事。例如，`I heard the news yesterday` 意味着你在前一天得知了这个消息。

软件上下文中的 `authentication module` 是系统中负责验证用户同一性的部分。它通常用于登录系统。例如，`The authentication module checks the username and password` 意味着它验证用户的凭据。

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

它是 `to hear` 的过去式，表示 Brian 已经得知了 Sophie 的任务。

---

`fixing`

### --feedback--

它指的是修复或解决软件中错误的行为。

---

`authentication`

### --feedback--

它指的是在软件模块中验证用户同一性的进程。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
