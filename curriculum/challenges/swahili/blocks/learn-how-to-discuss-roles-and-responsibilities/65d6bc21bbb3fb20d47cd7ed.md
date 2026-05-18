---
id: 65d6bc21bbb3fb20d47cd7ed
title: Zoezi la 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Kuuliza `What's her role?` ni njia ya kujua kuhusu kazi au nafasi ya mtu katika kundi au mradi. `Role` inamaanisha sehemu au kazi ambayo mtu hufanya katika hali fulani. Kwa mfano, kama `role` ya mtu shuleni ni mwalimu, inamaanisha kazi yake ni kufundisha wanafunzi.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Neno hili linaonyesha Tom anazungumzia kazi au sehemu ya mwanamke katika jambo fulani.

---

`role`

### --feedback--

Neno hili linamaanisha kazi au nafasi ambayo mtu ana katika hali fulani.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
