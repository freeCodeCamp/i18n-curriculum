---
id: 662e4f2edbb46a1dc6efc94f
title: 任务 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` 用于描述经常发生或被许多人广泛共享的事物。例如，`Colds are a common illness during the winter.` 这意味着这是许多人在那个季节面临的常见健康问题。

`Challenge` 指需要特殊努力才能完成的任务或情况，因为它很困难。例如，`Learning to ride a bike was a big challenge for her at first.` 这句话描述了学习骑自行车最初带来的困难。

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

这个形容词描述在某个群体中经常发生或通常出现的事物。

---

`challenge`

### --feedback--

这个名词指的是一个需要努力解决或克服的困难任务或问题。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
