---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: 任務 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Mark 還應該做些什麼？

## --answers--

他應該重寫他整個程式碼。

### --feedback--

Mark 不需要重寫所有內容。

---

他應該先測試他的程式碼。

---

他應該已經移除所有註解。

### --feedback--

註解很有用，不應該被移除。

---

他本應該跳過測試，因為它花費太長時間。

### --feedback--

測試是在提交程式碼之前的重要步驟。

## --video-solution--

2

# --explanation--

`test suite` 是一個用來檢查程式是否正常運作的測試群集。例如：

- `We ran the test suite to check if the app works properly.` - 團隊執行了所有測試，以確保應用程式如預期運作。

- `We need to add more tests to the test suite to check for edge cases。`－團隊應該包含更多測試以涵蓋所有可能的情況。

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
