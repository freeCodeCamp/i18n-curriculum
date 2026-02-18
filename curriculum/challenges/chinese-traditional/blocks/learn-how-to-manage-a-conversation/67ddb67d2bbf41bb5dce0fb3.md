---
id: 67ddb67d2bbf41bb5dce0fb3
title: 任務 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

我們可以從 James 的回答中得出什麼結論？

## --answers--

他需要先解決一個問題。

### --feedback--

James 沒有說任何關於另一個問題的事情。

---

他正以友善的方式結束對話。

---

他現在想要排程一個會議。

### --feedback--

沒有提到排程任何事情。

---

他正在尋求更多幫助。

### --feedback--

James 並未提出請求。

## --video-solution--

2

# --explanation--

在對話中，當意思清楚時，你經常會省略字詞。在 `Talk to you later` 中，主詞 `I'll`（`I will` 的縮寫）被省略了。完整句子應該是 `I'll talk to you later`。這種省略在口語中很常見。另一個例子：

`See you tomorrow!`－這是說 `I'll see you tomorrow` 的較簡短方式。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
