---
id: 66db5c0fafea6d794c92ccea
title: 任务 58
challengeType: 19
dashedName: task-58
lang: en-US
---

<!--
AUDIO REFERENCE:
Linda: Yes. The navigation bar and footer adjustments have already made a big difference.
-->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

更新后的元素执行得怎么样？

## --answers--

它们在所有设备上都无法正常工作，这造成了很大差异。

### --feedback--

Linda 没有提到更新中有任何问题。 

---

它们需要进一步调整才能正常工作，这没有任何区别。

### --feedback--

Linda 没有提到需要进一步调整。 

---

它们正在导致用户界面出现新问题，这已经产生了很大影响。

### --feedback--

Linda 没有说这些更新导致了新问题。 

---

他们执行得很好，调整带来了很大变化。

## --video-solution--

4

# --explanation--

要知道某事是否执行良好，请寻找表示良好结果或改进的词语或短语。 

Linda 使用短语 `have already made a big difference`。

`Made a big difference` 表示一个重要或显著的变化。当某事在积极的上下文中 `made a big difference`，通常意味着该变化是有帮助或有效的。

所以，Linda 的响应表明更新的元素运行良好，并且改善了情况。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.66,
      "finishTimestamp": 19.46
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 3.16,
      "dialogue": {
        "text": "Yes, the navigation bar and footer adjustments",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 3.16,
      "finishTime": 4.6,
      "dialogue": {
        "text": "have already made a big difference,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 5.1
    }
  ]
}
```
