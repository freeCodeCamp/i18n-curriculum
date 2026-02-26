---
id: 695fea6173bbffcaa3ffc36d
title: 任务 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

用西班牙语询问某人名字有两种常见方式。

两者都在日常西班牙语中使用，且含义相同。它们只是结构不同。

# --instructions--

听音频，回答下面的问题。 

# --questions--

## --text--

以下哪个问题 **与你在音频中听到的内容相似**？

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

这个问题询问某人住在哪里。

---

`¿Cuál es tu apellido?`

### --feedback--

这要求填写某人的姓氏。

---

`¿Tienes apodo?`

### --feedback--

这问的是某人是否有昵称。

## --video-solution--

1

# --explanation--

音频说 `¿Cómo te llamas?`。这是西班牙语中询问某人名字的最常见方式之一。另一个具有相同含义的非常常见的问题是：

`¿Cuál es tu nombre?`

这两个问题在日常西班牙语中都用于询问一个人的名字。它们的结构只是不同：

- `¿Cómo te llamas?` 使用动词 `llamarse`（被称为）
- `¿Cuál es tu nombre?` 直接询问作为名词的名字

在这个任务中，正确答案是询问某人姓名的选项。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
