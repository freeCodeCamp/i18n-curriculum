---
id: 680aef568ac1bd591eceb0dc
title: 작업 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

이것은 제품, 서비스 또는 이벤트를 홍보하기 위해 만든 메시지나 콘텐츠를 의미하는 짧은 형태입니다. 복수형을 사용하세요.

# --explanation--

`ad` (`advertisement`의 약자)는 사람들의 관심을 끌고 무언가를 구매하거나 서비스를 이용하거나 행동하도록 유도하기 위해 만든 콘텐츠 조각입니다. 광고는 소셜 미디어, 웹사이트, TV, 라디오 등 다양한 곳에 나타날 수 있습니다. 예를 들어:

- `They launched a new ad campaign for their latest product.` – 회사가 제품에 대한 관심을 높이기 위해 홍보 콘텐츠를 만들고 공유했다는 뜻입니다.

- `We saw a lot of online ads for the holiday sale.` – 웹사이트나 앱에 판매에 관한 홍보 메시지가 많이 있었다는 뜻입니다.

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
