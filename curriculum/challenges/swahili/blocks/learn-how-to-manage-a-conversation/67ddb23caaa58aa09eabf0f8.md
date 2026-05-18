---
id: 67ddb23caaa58aa09eabf0f8
title: Zoezi la 33
challengeType: 22
dashedName: task-33
lang: en-US
---

<!-- (Audio) Alice: I think that's it for now. Thanks for your help. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`I think that's it for BLANK. Thanks for your help.`

## --blanks--

`now`

### --feedback--

Hii ina maana kwa sasa na inaonyesha hali inaweza kubadilika baadaye.

# --explanation--

`For now` ina maana kwa wakati huu au kwa sasa. Inaashiria kuwa mambo yamekamilika kwa sasa, lakini huenda yakatokea zaidi baadaye. Kwa mfano:

`Let's stop working here for now and continue tomorrow.` - Hii ina maana wanapumzika kwa sasa, lakini wataendelea baadaye.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.46,
      "finishTimestamp": 44.64
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.18,
      "dialogue": {
        "text": "I think that's it for now. Thanks for your help.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 3.68
    }
  ]
}
```
