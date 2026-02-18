---
id: 67dd5cfeacc0cad2fc967438
title: 任務 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

James 想知道什麼？

## --answers--

如果他們同意第一階段的截止日期。

---

如果專案已被取消。

### --feedback--

James 沒有提到取消專案。

---

如果 Alice 負責第一階段。

### --feedback--

James 並沒有在詢問責任。

---

如果團隊完成了最後階段。

### --feedback--

James 不談論最後階段。

## --video-solution--

1

# --explanation--

`By the way` 用來介紹一個新的但相關的話題進入對話。它經常提出講者剛想起來或想確認的事情。例如：

`By the way, have you seen the updated report?`－這介紹了一個與先前討論內容相關的新問題。

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
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
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
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
