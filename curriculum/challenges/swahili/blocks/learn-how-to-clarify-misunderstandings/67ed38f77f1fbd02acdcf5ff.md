---
id: 67ed38f77f1fbd02acdcf5ff
title: Zoezi la 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

Usemi huu wa maneno mawili hutumika kuuliza kuhusu kinachoendelea au hali ilivyo. Neno la kwanza linaishia na `-ing`.

# --explanation--

`What's going on?` ni njia ya kawaida ya kumuuliza mtu kinachoendelea, hali ilivyo, au tatizo au tukio linalotokea. Kwa mfano:

`What's going on at the meeting?` – Mtu anauliza kinachoendelea wakati wa mkutano.

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
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 7.62,
      "finishTimestamp": 9.1
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
      "finishTime": 2.48,
      "dialogue": {
        "text": "Sure, Mark. What's going on?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 2.98
    }
  ]
}
```
