---
id: 68da8dffcffd794e83de9d6c
title: Zoezi la 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Chen Na anasema nini kuwapungia salamu kundi la watu?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

Hii ni salamu kwa mtu mmoja, lakini Chen Na anapungia salamu watu zaidi ya mmoja.

---

`您们好 (nín men hǎo)`

### --feedback--

Fomu hii si ya kawaida katika Kichina.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

Hii pia inamaanisha "Habari, kila mtu", lakini Chen Na anatumia msemo tofauti.

## --video-solution--

3

# --explanation--

Swali linauliza ni nini Chen Na anasema kuwapungia salamu **kundi la watu**.

`你好 (nǐ hǎo)` ni salamu kwa mtu mmoja, wakati `您好 (nín hǎo)` ni salamu ya heshima kwa mtu mmoja. `您们好 (nín men hǎo)` si ya kawaida katika Kichina; `您 (nín)` ni heshima kwa mtu mmoja, si kawaida kwa wingi.

Msemo sahihi wa kuwapungia salamu kundi ni `你们好 (nǐ men hǎo)`, ambayo ni njia ya kawaida ya kusema "habari, kila mtu". `大家好 (dà jiā hǎo)` ni njia nyingine ya kuwapungia salamu kundi, ambayo utaijifunza kadri unavyoendelea.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
