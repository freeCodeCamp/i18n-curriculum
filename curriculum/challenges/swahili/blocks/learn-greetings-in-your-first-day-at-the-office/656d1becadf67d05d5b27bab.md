---
id: 656d1becadf67d05d5b27bab
title: Zoezi la 149
challengeType: 19
dashedName: task-149
lang: en-US
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

Kama ulivyojifunza kuhusu kitenzi cha `he`, vitenzi kama `she` hutumika kumrejelea mtu wa kike. Husaidia kuepuka kurudia maneno katika mazungumzo. Angalia sehemu hii ya mazungumzo:

- Sophie: `Oh, come on, Brian.`

- Brian: `But it's true. She's the person to go to if you need help.`

Hapa, `she` hutumika na Brian kumrejelea Sophie. Badala ya kurudia jina la Sophie, Brian anatumia kitenzi cha `she` kufanya mazungumzo yawe laini na kuepuka kurudia.

# --questions--

## --text--

Katika mazungumzo haya, ni neno gani Brian anatumia kumrejelea Sophie bila kurudia jina lake?

## --answers--

`he`

### --feedback--

`He` hutumika kumrejelea mtu wa kiume.

---

`they`

### --feedback--

`They` ni wingi na hutumika kumrejelea watu zaidi ya mmoja.

---

`it`

### --feedback--

`It` kawaida hutumika kwa vitu au wanyama.

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
