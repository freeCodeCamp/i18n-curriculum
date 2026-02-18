---
id: 67ee6d7bcacdc02ff7d9beb2
title: 任务 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

这个词用于表示某物的存在或某事正在发生。它是 `there is` 的缩写。

---

`problem`

### --feedback--

这个词指的是需要解决或修复的问题或困难。

---

`with`

### --feedback--

这个介词显示两个事物之间的关系或连接。

---

`event handling`

### --feedback--

这个两个字的短语指的是软件或网站对用户执行的操作（如点击或按键）做出响应的方式。第二个词以 `-ing` 结尾。

# --explanation--

`There's a problem with` 用于描述某事未正常工作。它表示与某个特定事物相关的问题或困难。例如：

`There's a problem with the network.` – 这意味着网络无法正常工作。

`事件处理` 指的是程序或网站如何管理用户的操作，如点击、键盘按键或鼠标移动。例如：

`There's an issue with event handling.`——这意味着软件没有正确响应用户操作。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
