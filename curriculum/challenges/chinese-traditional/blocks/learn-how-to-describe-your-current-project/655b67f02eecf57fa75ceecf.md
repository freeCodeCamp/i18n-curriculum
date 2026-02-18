---
id: 655b67f02eecf57fa75ceecf
title: 任務 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

To `stay` 用來顯示保持在特定狀態或條件中。它經常用於指示或建議中，讓自己維持在某種情況。 例如：

- `Stay safe online。`－繼續在使用網際網路時保持安全。

- `Stay calm during the test.`－繼續保持冷靜。

- `Stay focused on your work.`－繼續專注於你的工作。

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

這個動詞顯示 Sophie 正在為她的團隊提供協助或支援。它以 `-ing` 結尾。

---

`stay`

### --feedback--

這個字用來建議維護某種狀態，在此情況下，是指在 `online` 時保持安全。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
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
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
