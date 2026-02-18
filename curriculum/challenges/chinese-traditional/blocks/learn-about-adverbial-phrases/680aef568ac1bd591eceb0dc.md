---
id: 680aef568ac1bd591eceb0dc
title: 任務 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

這是某種簡稱，意指為推廣產品、服務或事件而創建的訊息或內容。請使用複數形式。

# --explanation--

`ad`（`advertisement` 的縮寫）是一段旨在吸引人們注意並鼓勵他們購買某物、使用服務或採取行動的內容。廣告可以出現在社群媒體、網站、電視、廣播等多種媒介上。 例如：

- `They launched a new ad campaign for their latest product.`－這表示公司創建並分享促銷內容以引發對產品的興趣。

- `We saw a lot of online ads for the holiday sale.`－這表示在網站或應用程式上有許多關於促銷活動的宣傳訊息。

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
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
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
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
