---
id: 67f0ee4cc8f7fe5fd534eff4
title: 任务 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

这个两个字的短语用于表示对某个想法或建议的同意或认可。第一个单词以 `-s` 结尾。

---

`appreciate`

### --feedback--

这个词表示对某事心存感激。它表达了对帮助、支持或为你所做事情的感谢。

# --explanation--

`Sounds good` 意味着说话者同意或认可所说的话。例如：

`Your idea sounds good.` – 这意味着说话者认为这个想法很好并且同意它。

`I appreciate` 是一种表达感谢或表示感激的方式。例如：

`I appreciate your help with the project.` – 这意味着你感谢所收到的帮助。

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
