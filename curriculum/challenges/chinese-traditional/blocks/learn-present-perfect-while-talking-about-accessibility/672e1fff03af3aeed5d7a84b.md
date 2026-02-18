---
id: 672e1fff03af3aeed5d7a84b
title: 任務 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Anna 對 James 的想法有什麼看法，她建議什麼？

## --answers--

她不同意 James 的想法，並建議開始一個新的方法。

### --feedback--

Anna 表示同意 James，而非不同意，並且想保持更新而不是重新開始。

---

她認為 James 的想法令人困惑，並建議只專注於可存取性目標。

### --feedback--

Anna 不覺得 James 的想法令人困惑；她同意並想監控他們共同目標的進度。

---

她同意 James 的看法，並建議他們保持聯繫以監控進度。

---

她認為 James 的想法是不必要的，並建議停止該專案。

### --feedback--

Anna 不建議停止；她支援 James 的想法並想保持最新狀態。

## --video-solution--

3

# --explanation--

Anna 同意 James 的做法，說 `That makes sense`，這表示她理解並支援他的想法。她也建議 `keeping in touch to monitor progress`，表示她有興趣保持聯繫以掌握最新進展，確保他們達成共同目標。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
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
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
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
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
