---
id: 661bddbdbbc09e2b8fac0801
title: Zoezi la 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

Kiunganishi `at` kinaonyesha mahali kwenye ramani. Kinaelezea eneo maalum au nafasi. Kinakusaidia kuelewa mahali ambapo jambo linafanyika au mtu yuko.

Mifano:

`We'll meet at the coffee shop.` (katika sentensi hii, `at` inatumika kubainisha mahali ambapo mkutano utafanyika - duka la kahawa).

`I'll be waiting for you at the bus stop.` (`at` inatumika hapa kuonyesha mahali ambapo mtu atakuwa akisubiri - kituo cha basi).

Sikiliza sentensi na jaza nafasi tupu.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

Kiunganishi kinachotumika kusaidia kuelewa mahali jambo liko au linapotokea.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
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
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
