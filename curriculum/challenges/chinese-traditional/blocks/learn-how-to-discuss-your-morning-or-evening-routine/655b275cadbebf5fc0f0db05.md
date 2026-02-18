---
id: 655b275cadbebf5fc0f0db05
title: 任務 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

`take` 可以根據情況有不同的意思。在學習的背景關係中，`take` 意味著參加或修習一個類別或課程。舉例來說：

- 我在 7 點上 `online` 課程。

- `She is taking a programming course this semester。` - 這裡，`taking` 意味著她已註冊並正在上這門課。

所以，當你說 `take lessons` 或 `take a course`，你是在談論加入或參加它們，而不是實體地拿取某物。

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

這個動詞描述參與課程的動作。

---

`online`

### --feedback--

這個字取用一個虛擬環境。

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
