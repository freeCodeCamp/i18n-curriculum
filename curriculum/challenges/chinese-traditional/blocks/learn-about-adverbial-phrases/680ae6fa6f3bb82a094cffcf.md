---
id: 680ae6fa6f3bb82a094cffcf
title: 任務 91
challengeType: 19
dashedName: task-91
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

瑪麗亞會說什麼來表達她對結果感到正面驚訝？

## --answers--

`That's impressive.`

### --audio-id--

en-b1-680ae6fa6f3bb82a094cffcf-SP1

---

`Maybe we should lower our expectations.`

### --audio-id--

en-b1-680ae6fa6f3bb82a094cffcf-SP2

### --feedback--

這顯示出缺乏信心，而非對結果感到興奮。

## --video-solution--

1

# --explanation--

`Impressive` 意味著某事值得注意、讚賞或尊敬，因為它異常地好、大或有效。 例如：

`Your presentation was really impressive! It covered everything clearly and confidently.`－這表示簡報具有高品質，並留下強烈的正面影響。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
