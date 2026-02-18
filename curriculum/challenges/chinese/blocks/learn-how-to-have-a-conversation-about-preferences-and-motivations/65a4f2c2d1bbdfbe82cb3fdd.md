---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: 任务 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

`gadget` 是一种小型工具或设备，通常巧妙或新颖，能够执行特定的函数或使某事更容易。 

在技术领域，小工具可以包括智能手机、智能手表或任何酷炫的创新电子设备。 

例如，`My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

这个词的意思是某事引起一种感觉或反应。在这里，它用来描述是什么让 Bob 对技术感到兴奋。它以第三人称单数形式变化。

---

`those`

### --feedback--

这个词用于指出正在讨论的特定事物，在本分支中是指小工具。`that` 的复数形式。

---

`gadgets`

### --feedback--

这个词指的是有用或有趣的小型电子设备或工具。它通常用来谈论很酷的技术项。它是复数形式。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
