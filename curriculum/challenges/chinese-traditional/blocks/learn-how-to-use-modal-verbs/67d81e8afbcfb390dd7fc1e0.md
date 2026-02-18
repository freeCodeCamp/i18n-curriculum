---
id: 67d81e8afbcfb390dd7fc1e0
title: 任務 133
challengeType: 19
dashedName: task-133
showSpeakingButton: true
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Jake 還沒檢查過，並且說團隊應該專注於其他事情。他會怎麼說？  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

en-b1-67d81e8afbcfb390dd7fc1e0-SP1

---

`I already checked, and everything looks fine.`

### --audio-id--

en-b1-67d81e8afbcfb390dd7fc1e0-SP2

### --feedback--

Jake 還沒有檢查過，所以他無法確認這個。

## --video-solution--

1

# --explanation--

在評估個別檔案之前，通常會先將保護關鍵系統視為首要優先權。

「Not yet.」表示 Jake 尚未檢查哪些檔案遭到入侵。

`We should focus on the critical systems first.` 意味著團隊應該優先保護系統的關鍵零件，而不是查看檔案。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
