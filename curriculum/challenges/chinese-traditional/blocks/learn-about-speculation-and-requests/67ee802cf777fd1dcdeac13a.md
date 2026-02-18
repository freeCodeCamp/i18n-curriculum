---
id: 67ee802cf777fd1dcdeac13a
title: 任務 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Sophie 提到什麼需求？

## --answers--

Mark 應該刪除不必要的程式碼行。

### --feedback--

Sophie 不會談論移除程式碼。

---

Mark 應該完全重寫他的程式碼。

### --feedback--

Sophie 不建議重寫整個程式碼。

---

Mark 應避免使用迴圈。

### --feedback--

Sophie 沒有提到要避免使用迴圈。

---

Mark 應該在他的程式碼中使用註解。

## --video-solution--

4

# --explanation--

`comment` 是程式碼中的註解，有助於說明它的功能。例如：

- 你寫了一個註解來說明為什麼需要這個迴圈。

- 你可以使用註解來留下關於稍後需要修正問題的備註。- 註解可以添加在程式碼中，作為需要修正或改進事項的提醒。

註解幫助其他人理解程式碼，並在你稍後檢視程式碼時提醒你重要的細節。

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
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
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
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
