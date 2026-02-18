---
id: 657ec6ac4de4eac8bab2f2a7
title: 任務 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

字 `date` 可以在不同的背景關係中使用。雖然它通常指兩人之間的浪漫約會，但它也可以簡單地表示朋友或同事之間的約定或計劃好的事件。 例如：

`Let's set a date for our next meeting.` - 這裡的 `date` 是以非浪漫的方式使用，指的是選擇會議的日期。

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

這個字指定了計畫中的活動型別，表示這是一個包含自行車的郊遊。

---

`date`

### --feedback--

這個字取用的是排程的會議或事件。

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
