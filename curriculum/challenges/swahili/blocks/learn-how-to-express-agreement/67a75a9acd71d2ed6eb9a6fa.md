---
id: 67a75a9acd71d2ed6eb9a6fa
title: Zoezi la 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

Usemi huu wa maneno mawili unahusu hali tofauti zinazowakilisha jinsi mtu anavyoweza kuingiliana na bidhaa.

# --explanation--

`User scenarios` inahusu hali tofauti zinazobainisha jinsi watumizi wanavyoshirikiana na bidhaa kufikia lengo. Husaidia timu kujaribu na kuboresha uzoefu wa mtumizi. Kwa mfano:

`We created user scenarios to see how customers navigate the checkout process.` – Hii ina maana timu ilifanya majaribio ya njia tofauti ambazo watumizi wanamalizia ununuzi ili kubaini matatizo yoyote.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
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
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
