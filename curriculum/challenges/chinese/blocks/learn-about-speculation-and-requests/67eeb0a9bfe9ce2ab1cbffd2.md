---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: 任务 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

马克还应该做什么？

## --answers--

他应该重写他的整个代码。

### --feedback--

Mark 不需要重写所有内容。

---

他应该先测试他的代码。

---

他应该已经删除了所有评论。

### --feedback--

评论是有用的，不应被删除。

---

他应该跳过测试，因为它花费太长时间。

### --feedback--

测试是在提交代码之前的重要步骤。

## --video-solution--

2

# --explanation--

`test suite` 是一组用于查看程序是否正常工作的测试集合。例如：

- `We ran the test suite to check if the app works properly。` - 团队执行了所有测试以确保应用程序按预期运行。

- 我们需要为测试套件添加更多测试以查看边缘分支。——团队应包含更多测试以覆盖所有可能的情况。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
