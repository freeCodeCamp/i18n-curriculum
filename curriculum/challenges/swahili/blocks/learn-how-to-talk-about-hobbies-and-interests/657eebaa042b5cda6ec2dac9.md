---
id: 657eebaa042b5cda6ec2dac9
title: Zoezi la 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?` hutumika kudhihirisha kutoamini, mshangao, au wakati mwingine kuthibitisha kama mtu anacheka tu.

Kama rafiki yako anakuambia alimuona mbwa akipanda skateboard barabarani, unaweza kushangaa na kusema `Are you kidding?` kuuliza kama anasema kwa kweli au anacheka tu.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Kitenzi hiki hutumika katika usemi kudhihirisha kutoamini au mshangao kama jibu kwa kauli. Kinaishia kwa `-ing`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
