---
id: 680aef568ac1bd591eceb0dc
title: 任务 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

这是一种简写，表示为推广产品、服务或事件而创建的消息或内容。使用复数形式。

# --explanation--

`ad`（`advertisement` 的缩写）是一种旨在吸引人们注意并鼓励他们购买某物、使用某项服务或采取行动的内容。广告可以出现在社交媒体、网站、电视、广播等多种渠道。例如：

- `They launched a new ad campaign for their latest product.` – 这意味着公司创建并分享了宣传内容，以引起对产品的兴趣。

- `We saw a lot of online ads for the holiday sale.` – 这意味着在网站或应用上有许多关于促销的消息。

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
