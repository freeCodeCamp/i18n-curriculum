---
id: 6629ce6bffd1efa9c6c57eaa
title: 任務 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

片語 `how's it going?` 是一種常見的方式，用來詢問某人近況如何或他們生活中發生了什麼事。它經常被用作友善的問候語。

例如，當你看到一位老朋友時，你可能會說 `Hey, how's it going? I haven't seen you for a while!` 這是一種隨意詢問他們生活狀況的方式。如果你想詢問他們關於某件特定的事情，例如他們的新工作，你可以說 `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

這種縮寫通常用於非正式的問候語。將第一個字母大寫。

---

`going`

### --feedback--

這個字完成了常見的非正式問候，詢問某人的整體狀況。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
