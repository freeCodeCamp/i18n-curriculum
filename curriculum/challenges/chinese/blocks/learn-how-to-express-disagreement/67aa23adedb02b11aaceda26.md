---
id: 67aa23adedb02b11aaceda26
title: 任务 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

根据 Anna，什么更重要？

## --answers--

升级计算机。

---

购买新建办公家具。

### --feedback--

Anna 承认家具很重要，但说很多人提到需要别的东西。

---

获得更高的远程工作津贴。

### --feedback--

Anna 不谈论增加津贴，只谈论人们如何想使用它。

---

更改调查问题。

### --feedback--

Anna 没有提到任何关于调查问题的内容。

## --video-solution--

1

# --explanation--

`computer upgrade` 是指通过添加或更换部件来提升计算机性能，例如更多的内存（RAM）、更快的处理器或更好的屏幕。例如：

- `I need a computer upgrade to run the latest software。` - 说话者当前的计算机性能不足，因此他们需要一台更好的。

- `After the computer upgrade, everything runs much faster.` - 系统的性能在更新或更换组件后得到了提升。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
